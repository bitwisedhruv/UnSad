import 'package:flutter/material.dart';
import 'package:unsad/screens/home.dart';
import 'package:unsad/screens/meme%20genres/dank.dart';
import 'package:unsad/screens/meme%20genres/food.dart';
import 'package:unsad/screens/meme%20genres/gaming.dart';
import 'package:unsad/screens/meme%20genres/political.dart';
import 'package:unsad/screens/meme%20genres/programming.dart';
import 'package:unsad/screens/meme%20genres/relatable.dart';
import 'package:unsad/screens/meme%20genres/relationship.dart';
import 'package:unsad/screens/meme%20genres/sports.dart';
import 'package:unsad/screens/meme%20genres/wholesome.dart';

class SideDrawer extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 10);
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Material(
          color: Colors.blue,
          child: ListView(
            padding: padding,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  "Explore meme categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              menuItem(
                text: 'Random Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 0),
              ),
              menuItem(
                text: 'Dank Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 1),
              ),
              menuItem(
                text: 'Wholesome Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 2),
              ),
              menuItem(
                text: 'Political Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 3),
              ),
              menuItem(
                text: 'Relatable Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 4),
              ),
              menuItem(
                text: 'Gaming Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 5),
              ),
              menuItem(
                text: 'Food Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 6),
              ),
              menuItem(
                text: 'Relationship Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 7),
              ),
              menuItem(
                text: 'Sports Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 8),
              ),
              menuItem(
                text: 'Programming Memes',
                icon: Icons.emoji_emotions_outlined,
                onClicked: () => selectedItem(context, 9),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget menuItem(
    {required String text,
    required IconData icon,
    required VoidCallback onClicked}) {
  const colour = Colors.black;
  return ListTile(
    leading: Icon(icon),
    title: Text(
      text,
      style: const TextStyle(color: colour),
    ),
    hoverColor: Colors.white70,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Home()),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Dank()),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Wholesome()),
      );
      break;
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Political()),
      );
      break;
    case 4:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Relatable()),
      );
      break;
    case 5:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Gaming()),
      );
      break;
    case 6:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Food()),
      );
      break;
    case 7:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Relationship()),
      );
      break;
    case 8:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Sports()),
      );
      break;
    case 9:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Programming()),
      );
      break;
    default:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
  }
}
