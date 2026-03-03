class FamilyMember {
  final String image;
  final String sound;
  final String jpName;
  final String enName;

  FamilyMember({
    required this.image,
    required this.sound,
    required this.jpName,
    required this.enName,
  });

  static List<FamilyMember> members = [
    FamilyMember(
        image: "assets/images/family_members/family_father.png",
        sound: "sounds/family_members/father.wav",
        jpName: "Chichioya",
        enName: "Father"),
    FamilyMember(
        image: "assets/images/family_members/family_mother.png",
        sound: "sounds/family_members/mother.wav",
        jpName: "Hahaoya",
        enName: "Mother"),
    FamilyMember(
        image: "assets/images/family_members/family_grandfather.png",
        sound: "sounds/family_members/grand father.wav",
        jpName: "Ojiisan",
        enName: "Grandfather"),
    FamilyMember(
        image: "assets/images/family_members/family_grandmother.png",
        sound: "sounds/family_members/grand mother.wav",
        jpName: "Obaasan",
        enName: "Grandmother"),
    FamilyMember(
        image: "assets/images/family_members/family_older_brother.png",
        sound: "sounds/family_members/older brother.wav",
        jpName: "Nisan",
        enName: "Older Brother"),
    FamilyMember(
        image: "assets/images/family_members/family_older_sister.png",
        sound: "sounds/family_members/older sister.wav",
        jpName: "Anesan",
        enName: "Older Sister"),
    FamilyMember(
        image: "assets/images/family_members/family_son.png",
        sound: "sounds/family_members/son.wav",
        jpName: "Musuko",
        enName: "Son"),
    FamilyMember(
        image: "assets/images/family_members/family_daughter.png",
        sound: "sounds/family_members/daughter.wav",
        jpName: "Musume",
        enName: "Daughter"),
    FamilyMember(
        image: "assets/images/family_members/family_younger_brother.png",
        sound: "sounds/family_members/younger brother.wav",
        jpName: "Ototo",
        enName: "Younger Brother"),
    FamilyMember(
        image: "assets/images/family_members/family_younger_sister.png",
        sound: "sounds/family_members/younger sister.wav",
        jpName: "Imoto",
        enName: "Younger Sister"),
  ];
}
