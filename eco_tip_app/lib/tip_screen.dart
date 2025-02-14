import 'package:flutter/material.dart';

class TipScreen extends StatefulWidget {
  const TipScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TipScreenState createState() => _TipScreenState();
}

class _TipScreenState extends State<TipScreen> {
  final List<String> ecoTips = [
    "Turn off lights when not in use.",
    "Use public transport or cycle.",
    "Switch to reusable bags and bottles.",
    "Plant trees to combat CO₂ emissions.",
    "Eat less meat and dairy to lower your carbon footprint.",
  ];

  int _currentIndex = 0;

  void _showNextTip() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % ecoTips.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: const Text(
          "Eco Tips 🌍",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: Center( // ✅ Ensures everything inside is centered
        child: Column(
          mainAxisSize: MainAxisSize.min, // ✅ Makes Column take only necessary space
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.green.shade100,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // ✅ Makes Card content take only required space
                  children: [
                    const Icon(Icons.eco, color: Colors.green, size: 40),
                    const SizedBox(height: 10),
                    const Text(
                      "Eco-Friendly Tip 🌱",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      ecoTips[_currentIndex],
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showNextTip,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                     "Next Tip",
                 style: TextStyle(
                        fontSize: 18,
                        color: Colors.black, // ✅ Correct placement
               ),
               ),

            ),
          ],
        ),
      ),
    );
  }
}
