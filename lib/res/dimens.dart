const guidelineBaseWidth = 375;
const guidelineBaseHeight = 812;

double get scaleWidth => 1;

double get scaleHeight => 1;

double get scaleText => 1;

extension ScreenExtension on num {
  double get ws => this * scaleWidth; // Width Scale
  double get hs => this * scaleHeight; // Height Scale
  double get ts => this * scaleText; // Text Scale
  double get rs => this * scaleText; // Radius Scale
}
