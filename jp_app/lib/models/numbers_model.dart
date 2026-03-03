class Number {
  final String image;
  final String sound;
  final String jpName;
  final String enName;

  Number({
    required this.image,
    required this.sound,
    required this.jpName,
    required this.enName,
  });

  static List<Number> nums = [
    Number(
        image: "assets/images/numbers/number_one.png",
        sound: "sounds/numbers/number_one_sound.mp3",
        jpName: "ichi",
        enName: "One"),
    Number(
        image: "assets/images/numbers/number_two.png",
        sound: "sounds/numbers/number_two_sound.mp3",
        jpName: "ni",
        enName: "Two"),
    Number(
        image: "assets/images/numbers/number_three.png",
        sound: "sounds/numbers/number_three_sound.mp3",
        jpName: "san",
        enName: "Three"),
    Number(
        image: "assets/images/numbers/number_four.png",
        sound: "sounds/numbers/number_four_sound.mp3",
        jpName: "yon",
        enName: "Four"),
    Number(
        image: "assets/images/numbers/number_five.png",
        sound: "sounds/numbers/number_five_sound.mp3",
        jpName: "go",
        enName: "Five"),
    Number(
        image: "assets/images/numbers/number_six.png",
        sound: "sounds/numbers/number_six_sound.mp3",
        jpName: "roku",
        enName: "Six"),
    Number(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        jpName: "nana",
        enName: "Seven"),
    Number(
        sound: "sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "Eight"),
    Number(
        sound: "sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        jpName: "kyuu",
        enName: "Nine"),
    Number(
        sound: "sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        jpName: "juu",
        enName: "Ten"),
  ];
}
