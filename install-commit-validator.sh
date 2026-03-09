#!/bin/bash

set -e

echo "🔧 Setting up commitlint + husky + gitleaks (global mode)..."

# -----------------------------
# 1. Check Homebrew
# -----------------------------
if ! command -v brew &> /dev/null; then
  echo "❌ Homebrew not found!"
  echo "👉 Install with:"
  echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
  exit 1
else
  echo "✅ Homebrew installed"
fi

# -----------------------------
# 2. Check Node.js & npm
# -----------------------------
if ! command -v node &> /dev/null; then
  echo "❌ Node.js not found!"
  echo "👉 Install with Homebrew:"
  echo "brew install node"
  exit 1
else
  echo "✅ Node.js installed (version: $(node -v))"
fi

# -----------------------------
# 3. Install gitleaks if missing
# -----------------------------
if ! command -v gitleaks &> /dev/null; then
  echo "📦 Installing gitleaks..."
  brew install gitleaks
else
  echo "✅ gitleaks already installed (version: $(gitleaks version))"
fi

# -----------------------------
# 4. Install commitlint globally if missing
# -----------------------------
if ! command -v commitlint &> /dev/null; then
  echo "📦 Installing commitlint globally..."
  npm install -g @commitlint/cli @commitlint/config-conventional
else
  echo "✅ commitlint already installed globally"
fi

# -----------------------------
# 5. Install husky globally if missing
# -----------------------------
if ! command -v husky &> /dev/null; then
  echo "📦 Installing husky globally..."
  npm install -g husky
else
  echo "✅ husky already installed globally"
fi

# -----------------------------
# 6. Create commitlint config if missing
# -----------------------------
if [ ! -f "commitlint.config.js" ]; then
  echo "📝 Creating commitlint.config.js..."
  cat > commitlint.config.js << 'EOF'
module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'type-enum': [
      2,
      'always',
      [
        'feat',     // New feature
        'fix',      // Bug fix
        'docs',     // Documentation only
        'style',    // Code style (formatting, missing semi colons, etc)
        'refactor', // Code refactoring
        'perf',     // Performance improvements
        'test',     // Adding tests
        'chore',    // Maintenance tasks
        'ci',       // CI/CD changes
        'build',    // Build system changes
        'revert'    // Revert previous commit
      ]
    ],
    'subject-case': [0] // Allow any case for subject
  }
};
EOF
  echo "✅ commitlint.config.js created"
else
  echo "✅ commitlint.config.js already exists"
fi

# -----------------------------
# 7. Setup Husky in current repo
# -----------------------------
if [ ! -d ".husky" ]; then
  echo "📂 Initializing husky in project..."
  npx husky install
else
  echo "✅ .husky folder already exists"
fi

# -----------------------------
# 8. Add commit-msg hook with gitleaks
# -----------------------------
if [ -f ".husky/commit-msg" ]; then
  echo "✅ .husky/commit-msg already exists, skipping"
else
  echo "🪝 Adding commit-msg hook with gitleaks..."
  cat > .husky/commit-msg << 'EOF'
#!/bin/sh
. "$(dirname "$0")/_/husky.sh"

# Run gitleaks to check for secrets
echo "🔍 Running gitleaks..."
gitleaks protect --staged --verbose || {
  echo "❌ Gitleaks detected secrets in your commit!"
  echo "Please remove sensitive data before committing."
  exit 1
}

# Run commitlint to check commit message format
npx --no -- commitlint --edit "$1"
EOF
  chmod +x .husky/commit-msg
  echo "✅ commit-msg hook created with gitleaks + commitlint"
fi

echo ""
echo "🎉 Setup complete!"
echo "📋 What happens now:"
echo "  1. Gitleaks will scan for secrets in staged files"
echo "  2. Commitlint will validate your commit message format"
echo ""
echo "👉 Try: git commit -m 'test: bad commit message' (should be rejected by commitlint)"
echo "👉 Or add a fake API key to test gitleaks detection"