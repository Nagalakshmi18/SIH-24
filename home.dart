import 'package:flutter/material.dart';
import 'package:fir_2/Pages/landing.dart';
import 'package:fir_2/Pages/ArrestedPersons.dart';
import 'package:fir_2/Pages/ComplaintRegistration.dart';
import 'package:fir_2/Pages/ComplaintStatus.dart';
import 'package:fir_2/Pages/CsrStatus.dart';
import 'package:fir_2/Pages/EPaymentChallans.dart';
import 'package:fir_2/Pages/FirStatus.dart';
import 'package:fir_2/Pages/VehicleStatus.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Madhya Pradesh Police Citizen Services'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer first
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Landing()), // Navigate to HomePage
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.lightBlue[100], // Background color as per the image
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Buttons as per the image
            buildButton(context, Icons.edit, 'Complaint Registration',
                const ComplaintRegistration()),
            const SizedBox(height: 16),
            buildButton(context, Icons.check_circle, 'Complaint Status',
                const ComplaintStatus()),
            const SizedBox(height: 16),
            buildButton(
                context, Icons.article, 'FIR Status', const FirStatus()),
            const SizedBox(height: 16),
            buildButton(context, Icons.report, 'CSR Status', const CsrStatus()),
            const SizedBox(height: 16),
            buildButton(context, Icons.directions_car, 'Vehicle Status',
                const VehicleStatus()),
            const SizedBox(height: 16),
            buildButton(context, Icons.people, 'Details Of Arrested Persons',
                const ArrestedPersons()),
            const SizedBox(height: 16),
            buildButton(context, Icons.payment,
                'E-Payment for Traffic Challans', const EPaymentChallans()),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.blue[800],
        child: const Text(
          'Government of Madhya Pradesh | Mobile App Development, Competency Center, NIC',
          style: TextStyle(color: Colors.white, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget buildButton(
      BuildContext context, IconData icon, String text, Widget page) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[400], // Button color
        minimumSize: const Size(double.infinity, 50), // Make the button stretch
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      icon: Icon(icon, color: Colors.white),
      label: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
