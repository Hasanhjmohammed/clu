import 'package:clu/models/room.dart';
import 'package:clu/models/user.dart';

const User currentUser = User(
    firstName: "Asem",
    lastName: "Saafan",
    imageURL:
     "images/h1.jpg");
const List<User> allUsers = [
  User(
      firstName: "Ahmed",
      lastName: "Ibrahim",
      imageURL:"images/h1.jpg"),
  User(
      firstName: "Zaki",
      lastName: "Ahmed",
      imageURL:
      "images/h2.jpg"),
  User(
      firstName: "Abdo",
      lastName: "Kefah",
      imageURL:
      "images/h3.jpg"),
  User(
      firstName: "Ahmed",
      lastName: "Leo",
      imageURL:
      "images/h4.jpg"),
  User(
      firstName: "Mohamed",
      lastName: "Elsayed",
      imageURL:
      "images/h5.jpg"),
  User(
      firstName: "Omar",
      lastName: "Abdo",
      imageURL:
      "images/h6.jpg"),
  User(
      firstName: "Mohamed",
      lastName: "Abdelnaser",
      imageURL:
      "images/h7.jpg"),
  User(
      firstName: "Ibrahim",
      lastName: "Zaki",
      imageURL:
      "images/h8.jpg"),
  User(
      firstName: "Aamer",
      lastName: "Salama",
      imageURL:
      "images/h9.jpg"),
  User(
      firstName: "Hassan",
      lastName: "Mohamed",
      imageURL:
      "images/h10.jpg"),
  User(
      firstName: "Fahd",
      lastName: "Ahmed",
      imageURL:
      "images/h11.jpg"),
  User(
      firstName: "Mohamed",
      lastName: "Elsayed",
      imageURL:
      "images/h12.jpg"),
  User(
      firstName: "Ibrahim",
      lastName: "Ahmed",
      imageURL:
      "images/h13.jpg"),
  User(
      firstName: "Omar",
      lastName: "Saafan",
      imageURL:
      "images/h14.jpg"),
  User(
      firstName: "Abdelnaser",
      lastName: "Ibrahim",
      imageURL:
      "images/h15.jpg"),
  User(
      firstName: "Ahmed",
      lastName: "Mohamed",
      imageURL:
      "images/h16.jpg"),
  User(
      firstName: "Mohamed",
      lastName: "Clay",
      imageURL:
      "images/h17.jpg"),
  User(
      firstName: "Ahmed",
      lastName: "Afify",
      imageURL:
      "images/h18.jpg"),
  User(
      firstName: "Maged",
      lastName: "Ahmed",
      imageURL:
      "images/h19.jpg"),
  User(
      firstName: "Omar",
      lastName: "Elsayed",
      imageURL:
      "images/h20.jpg"),
];

final List<Room> roomList = [
  Room(
    club: 'Flutter Time',
    name: 'Special Time to play with Flutter & Dart',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Room(
    club: 'The best Room',
    name: '⏰ A Very Important Person on Good Time',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Room(
    club: 'Cryptocurrency Time',
    name: 'love and bitcoin edition 💰',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Room(
    club: 'Hello World Time',
    name: 'Think with Developers about anything',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
];
