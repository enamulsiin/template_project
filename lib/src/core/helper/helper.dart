class Helper{
  const Helper._();

  static String parseHtmlToText(String text){
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    String parsedString = text.trim().replaceAll(exp, ' ');
    return parsedString.trim();
  }
}
