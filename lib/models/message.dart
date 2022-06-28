class Message {
  String imageAvatar;
  String name;
  String textChat;
  int time;

  Message({
    required this.imageAvatar,
    required this.name,
    required this.textChat,
    required this.time,
  });
}

var messageList = [
  Message(
    imageAvatar: 'assets/images/avatar1.png',
    name: 'David Anderson',
    textChat: 'Me : Ok no problem, thank for...',
    time: 4,
  ),
  Message(
    imageAvatar: 'assets/images/avatar2.png',
    name: 'Jack Lobanov',
    textChat: 'Jack Lobanov : Yes but you...',
    time: 8,
  ),
  Message(
    imageAvatar: 'assets/images/avatar3.png',
    name: 'Arianne Madilva',
    textChat: 'Me : His looks cute can I adopt...',
    time: 12,
  ),
  Message(
    imageAvatar: 'assets/images/avatar4.png',
    name: 'Yarui Mikasa',
    textChat: 'Me : His looks cute can...',
    time: 12,
  ),
  Message(
    imageAvatar: 'assets/images/avatar5.png',
    name: 'Robert Beyone',
    textChat: 'Me : His looks pretty I love it...',
    time: 2,
  ),
];
