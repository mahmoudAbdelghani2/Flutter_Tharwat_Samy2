class Phrase {
  final String sound;
  final String jpName;
  final String enName;

  Phrase({
    required this.sound,
    required this.jpName,
    required this.enName,
  });

  static List<Phrase> phrases = [
    Phrase(
        sound: "sounds/phrases/are_you_coming.wav",
        jpName: "Kimasu ka",
        enName: "Are you coming?"),
    Phrase(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        jpName: "Kōdoku o wasurenaide kudasai",
        enName: "Don't forget to subscribe"),
    Phrase(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        jpName: "Go kibun wa ikaga desu ka",
        enName: "How are you feeling?"),
    Phrase(
        sound: "sounds/phrases/i_love_anime.wav",
        jpName: "Watashi wa anime ga daisukidesu",
        enName: "I love anime"),
    Phrase(
        sound: "sounds/phrases/i_love_programming.wav",
        jpName: "Watashi wa puroguramingu ga daisukidesu",
        enName: "I love programming"),
    Phrase(
        sound: "sounds/phrases/programming_is_easy.wav",
        jpName: "Puroguramingu wa kantandesu",
        enName: "Programming is easy"),
    Phrase(
        sound: "sounds/phrases/what_is_your_name.wav",
        jpName: "Anata no namae wa nandesu ka",
        enName: "What is your name?"),
    Phrase(
        sound: "sounds/phrases/where_are_you_going.wav",
        jpName: "Doko ni iku no",
        enName: "Where are you going?"),
    Phrase(
        sound: "sounds/phrases/yes_im_coming.wav",
        jpName: "Hai, ikimasu",
        enName: "Yes I'm coming"),
  ];
}
