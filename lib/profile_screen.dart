import 'package:dogs/start.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/beach.jpeg'), fit: BoxFit.cover),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 100),
            child: const Column(
              children: [
                ProfileImage(),
                ProfileIcons(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});
  Widget _buildText(String text, String value) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 30),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/dog.jpeg',
            height: 300,
            width: 300,
          ),
        ),
        const Text(
          "Drake Oliviya",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        ),
        const StarRating(color: Colors.green, value: 5, starSize: 30),
        _buildText("Age : ", "4"),
        _buildText("Name : ", "Shiro")
      ],
    );
  }
}

class ProfileIcons extends StatelessWidget {
  const ProfileIcons({super.key});
  Widget _buildIcons(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcons(Icons.restaurant, "Feed"),
        _buildIcons(Icons.favorite, "Pet"),
        _buildIcons(Icons.directions_walk, "Walk")
      ],
    );
  }
}
