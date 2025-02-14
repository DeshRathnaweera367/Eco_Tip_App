import 'package:flutter/material.dart';
import 'tip_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: const Text(
          "Eco Tip App 🌱",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting
            const Text(
              "Hello, Eco Warrior! 🌍",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),

            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(
                    Icons.eco, "Eco Tips", context, TipScreen()),
                _buildActionButton(
                    Icons.info_outline, "About", context,  AboutScreen()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
      IconData icon, String label, BuildContext context, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.green.shade200,
            child: Icon(icon, size: 30, color: Colors.green.shade700),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
