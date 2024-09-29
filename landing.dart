import 'package:flutter/material.dart';
import 'home.dart'; // Import next page for navigation

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Stack(
        children: [
          // Positioned to the top center
          const Positioned(
            top: 50, // Adjust this value as needed
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Madhya Pradesh Police Citizen Services',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Madhya Pradesh Police',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                    height: 100), // Adjust to make room for the title
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Image.asset(
                      'images/MP.png', // Image path in your assets
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
