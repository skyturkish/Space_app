class ImageConstants {
  static ImageConstants? _instance;

  static ImageConstants get instance => _instance ??= ImageConstants._init();

  ImageConstants._init();

  // maybe you can one function for them
  String toJfif(String name) => 'asset/image/$name.jfif';
  String toPng(String name) => 'asset/image/$name.png';
}
