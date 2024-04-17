

class Game {
  String bgImg;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String desc;
  List<String> imgs;
  Game(
    this.bgImg,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.desc,
    this.imgs,
  );
  static List<Game> generateGames() {
    return [
      Game(
        'assets/images/ori1.jpg', 
        'assets/images/ori_logo.png', 
        'Ori and The Blind Forest', 
        'Adventure', 
        4.8, 
        382, 
        324, 
        'The little spirit Ori is no stranger to peril, but when a fateful flight puts the owlet Ku in harms way, Ori embarks on a journey to save their friend and discover the mysteries of the forest. Set in a visually stunning world filled with emotional storytelling, Ori and The Blind Forest offers a heartfelt adventure of courage, sacrifice, and hope.', 
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
          'assets/images/ori5.jpg',
        ],
      ),
      Game(
        'assets/images/rl1.jpg', 
        'assets/images/rl_logo.png', 
        'Rayman Legend', 
        'Adventure', 
        4.8, 
        290, 
        539, 
        'Join Rayman and his colorful cast of characters in a vibrant and whimsical adventure through magical worlds. With stunning visuals, addictive gameplay, and a charmingly eccentric atmosphere, Rayman Legends invites players to embark on a joyful quest to save the Glade of Dreams from the nefarious schemes of dark forces. Packed with inventive level design, rhythmic challenges, and cooperative multiplayer, its a platforming extravaganza that delights players of all ages.', 
        [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      ),
    ];
  }
}