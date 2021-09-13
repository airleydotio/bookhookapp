class Dimen {
  // Device Height
  late double? _height;

  // Font Size
  late double _fontSize1;
  late double _fontSize2;
  late double _fontSize3;
  late double _fontSize4;
  late double _fontSize5;
  late double _fontSize6;
  late double _fontSize7;
  late double _fontSize8;
  late double _fontSize9;

  // Spacing
  late double _margin1;
  late double _margin2;
  late double _margin3;

  late double _mh1;
  late double _mh2;

  // Dimen
  late double _topMargin;
  late double _profileImage;
  late double _buttonHeight;
  late double _buttonIconWidth;
  late double _buttonIconHeight;

  // Dimen Instance
  static Dimen? _instance;

  Dimen._(double height) {
    _height = height;

    if (height < 600) {
      initForSmallDevices(height);
    } else if (height > 800) {
      initForLargeDevices(height);
    } else {
      initForMediumDevices(height);
    }

    _margin2 = (_margin1 * 70) / 100;
    _margin3 = (_margin1 * 25) / 100;
  }

  void initForSmallDevices(double height) {
    _fontSize1 = 32;
    _fontSize2 = 28;
    _fontSize3 = 21;
    _fontSize4 = 19;
    _fontSize5 = 15;
    _fontSize6 = 14;
    _fontSize7 = 12;
    _fontSize8 = 11;
    _fontSize9 = 9;
    _margin1 = 19;
    _topMargin = 20;
    _profileImage = 30;
    _buttonHeight = 40;
    _buttonIconHeight = 20;
    _buttonIconWidth = 25;
    _mh1 = 22;
    _mh2 = 17;
  }

  void initForMediumDevices(double height) {
    _fontSize1 = 34;
    _fontSize2 = 30;
    _fontSize3 = 24;
    _fontSize4 = 21;
    _fontSize5 = 17;
    _fontSize6 = 15;
    _fontSize7 = 13;
    _fontSize8 = 11;
    _fontSize9 = 10;
    _margin1 = height / 40;
    _topMargin = 40;
    _profileImage = 40;
    _buttonHeight = 45;
    _buttonIconHeight = 25;
    _buttonIconWidth = 30;
    _mh1 = 26;
    _mh2 = 23;
  }

  void initForLargeDevices(double height) {
    _fontSize1 = 38;
    _fontSize2 = 32;
    _fontSize3 = 28;
    _fontSize4 = 24;
    _fontSize5 = 18;
    _fontSize6 = 16;
    _fontSize7 = 14;
    _fontSize8 = 12;
    _fontSize9 = 10;
    _margin1 = height / 30;
    _topMargin = 40;
    _profileImage = 40;
    _buttonHeight = 45;
    _buttonIconHeight = 25;
    _buttonIconWidth = 30;
    _mh1 = 27;
    _mh2 = 25;
  }

  static Dimen getInstance({double? height}) {
    if (_instance == null) {
      _instance = new Dimen._(height!);
      return _instance!;
    } else {
      return _instance!;
    }
  }

  double convert(double pixels) {
    if (_height! < 600) {
      return (pixels * 70) / 100;
    } else if (_height! > 800) {
      return pixels;
    } else {
      return (pixels * 95) / 100;
    }
  }

  double get fontSize9 => _fontSize9;

  double get fontSize8 => _fontSize8;

  double get fontSize7 => _fontSize7;

  double get fontSize6 => _fontSize6;

  double get fontSize5 => _fontSize5;

  double get fontSize4 => _fontSize4;

  double get fontSize3 => _fontSize3;

  double get fontSize2 => _fontSize2;

  double get fontSize1 => _fontSize1;

  double get margin3 => _margin3;

  double get margin2 => _margin2;

  double get margin1 => _margin1;

  double get buttonIconHeight => _buttonIconHeight;

  double get buttonIconWidth => _buttonIconWidth;

  double get buttonHeight => _buttonHeight;

  double get profileImage => _profileImage;

  double get topMargin => _topMargin;

  double get mh1 => _mh1;

  double get mh2 => _mh2;
}
