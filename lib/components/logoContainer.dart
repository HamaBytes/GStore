import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logocontainer extends StatelessWidget {
  const Logocontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /* image */
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1E1F28),
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            width: 80,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: const Center(
                child: SizedBox(
                  width: 64,
                  height: 64,
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Center(
          child: Text.rich(
            TextSpan(
              style: GoogleFonts.plusJakartaSans(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: const Color(0xFFFFFFFF),
                letterSpacing: -0.5,
              ),
              children: const [
                TextSpan(
                  text: 'G',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                TextSpan(
                  text: 'Store',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Container(
          margin: const EdgeInsets.only(top: 4.0),
          child: Text.rich(
            TextSpan(
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFB8BAC8),
                letterSpacing: 0,
              ),
              children: [
                const TextSpan(text: "Sign in to discover & stream "),
                TextSpan(
                  text: "epic movies",
                  style: GoogleFonts.inter(
                    color: const Color(0xFFCABEFB),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
