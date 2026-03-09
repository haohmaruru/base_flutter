extension ScreenExtension on num {
  double get scaleWidth => 1;

  double get scaleHeight => 1;

  double get scaleText => 1;

  double get ws => this * scaleWidth; // Width Scale
  double get hs => this * scaleHeight; // Height Scale
  double get ts => this * scaleText; // Text Scale
  double get rs => this * scaleText; // Radius Scale
}
