class ColorModel {
  final String image;
  final String sound;
  final String jpName;
  final String enName;

  ColorModel({
    required this.image,
    required this.sound,
    required this.jpName,
    required this.enName,
  });

  static List<ColorModel> colors = [
    ColorModel(
        image: "assets/images/colors/color_black.png",
        sound: "sounds/colors/black.wav",
        jpName: "Kuro",
        enName: "Black"),
    ColorModel(
        image: "assets/images/colors/color_brown.png",
        sound: "sounds/colors/brown.wav",
        jpName: "Chairo",
        enName: "Brown"),
    ColorModel(
        image: "assets/images/colors/color_dusty_yellow.png",
        sound: "sounds/colors/dusty yellow.wav",
        jpName: "Hokori ppoi kiiro",
        enName: "Dusty Yellow"),
    ColorModel(
        image: "assets/images/colors/color_gray.png",
        sound: "sounds/colors/gray.wav",
        jpName: "Gure",
        enName: "Gray"),
    ColorModel(
        image: "assets/images/colors/color_green.png",
        sound: "sounds/colors/green.wav",
        jpName: "Midori",
        enName: "Green"),
    ColorModel(
        image: "assets/images/colors/color_red.png",
        sound: "sounds/colors/red.wav",
        jpName: "Aka",
        enName: "Red"),
    ColorModel(
        image: "assets/images/colors/color_white.png",
        sound: "sounds/colors/white.wav",
        jpName: "Shiro",
        enName: "White"),
    ColorModel(
        image: "assets/images/colors/yellow.png",
        sound: "sounds/colors/yellow.wav",
        jpName: "Kiiro",
        enName: "Yellow"),
  ];
}
