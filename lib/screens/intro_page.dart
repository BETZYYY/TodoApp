// Suggested code may be subject to a license. Learn more: ~LicenseLog:1868490642.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // logo
        Padding(
          padding: const EdgeInsets.only(left: 80.0, right: 80, top: 100, bottom: 15),
          child: Image.asset('lib/images/logo.png'),
        ),

        Padding(
          padding: const EdgeInsets.all(27.0),
          child: Text(
            "SELESAIKAN TUGAS ANDA",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 24),

        Text(
          "melayani dengan haha hihi",
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),

        const Spacer(),

        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Gas Ngops",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        const Spacer(),
      ],
    ));
  }
}
