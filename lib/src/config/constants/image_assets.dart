class ImageAssets {
  const ImageAssets._();

  static String get icAppLogo => 'ic_app_logo'.png;
  static String get icEdit => 'ic_edit'.jpg;
  static String get icShare => 'ic_share'.svg;
}

extension on String {
  String get png => 'assets/images/$this.png';
  String get jpg => 'assets/images/$this.jpg';
  String get svg => 'assets/images/$this.svg';
}
