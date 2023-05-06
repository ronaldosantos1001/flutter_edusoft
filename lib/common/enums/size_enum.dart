import 'package:flutter/rendering.dart';

enum ScreenSizesEnum { xs, sm, md, lg }

extension ScreenSizesExtension on ScreenSizesEnum {
  BoxConstraints get size {
    switch (this) {
      case ScreenSizesEnum.xs:
        return const BoxConstraints();
      case ScreenSizesEnum.sm:
        return const BoxConstraints();
      case ScreenSizesEnum.md:
        return const BoxConstraints(maxWidth: 600);
      case ScreenSizesEnum.lg:
        return const BoxConstraints(maxWidth: 600);
      default:
        return const BoxConstraints();
    }
  }

  static ScreenSizesEnum fromSize(double size) {
    if (size < 768) {
      return ScreenSizesEnum.xs;
    } else if (size < 992) {
      return ScreenSizesEnum.sm;
    } else if (size < 1200) {
      return ScreenSizesEnum.md;
    } else {
      return ScreenSizesEnum.lg;
    }
  }
}

/*
  Screen Available Sizes:
  - xs (for phones - screens less than 768px wide)
  - sm (for tablets - screens equal to or greater than 768px wide)
  - md (for small laptops - screens equal to or greater than 992px wide)
  - lg (for laptops and desktops - screens equal to or greater than 1200px wide)
*/
