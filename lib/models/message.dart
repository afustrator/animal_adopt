class Message {
  String ownerAvatar;
  String myAvatar;
  String name;
  List ownerChat;
  List myChat;
  int time;

  Message({
    required this.ownerAvatar,
    required this.myAvatar,
    required this.name,
    required this.ownerChat,
    required this.myChat,
    required this.time,
  });
}

var messageList = [
  Message(
    ownerAvatar: 'assets/images/avatar1.png',
    myAvatar: '',
    name: 'David Anderson',
    ownerChat: [
      'David: Sorry, your location is very far from my place.',
    ],
    myChat: [
      'Me: Ok no problem, thank you for the reply.',
    ],
    time: 4,
  ),
  Message(
    ownerAvatar: 'assets/images/avatar2.png',
    myAvatar: '',
    name: 'Jack Lobanov',
    ownerChat: ['Jack: Yes but you...'],
    myChat: [],
    time: 8,
  ),
  Message(
    ownerAvatar: 'assets/images/avatar3.png',
    myAvatar: '',
    name: 'Arianne Madilva',
    ownerChat: ['Madilva: His looks cute can I adopt...'],
    myChat: [],
    time: 12,
  ),
  Message(
    ownerAvatar: 'assets/images/avatar4.png',
    myAvatar: '',
    name: 'Yarui Mikasa',
    ownerChat: ['Yarui: His looks cute can...'],
    myChat: [],
    time: 12,
  ),
  Message(
    ownerAvatar: 'assets/images/avatar5.png',
    myAvatar: '',
    name: 'Robert Beyone',
    ownerChat: ['Robert: His looks pretty I love it...'],
    myChat: [],
    time: 2,
  ),
];
