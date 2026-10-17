import 'dart:ui'; // Requis pour utiliser ImageFilter
import 'package:flutter/material.dart';
import 'package:gstore/forms/loginform.dart';
import 'package:gstore/components/logoContainer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF12131C),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              // Padding global demandé appliqué ici (24px haut/bas, 16px gauche/droite)
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  // Soustraction du padding vertical global (24 * 2 = 48) pour éviter l'overflow
                  minHeight: constraints.maxHeight - 48.0,
                ),
                child: IntrinsicHeight(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      // 1. Effet d'ambiance (Ambient Glow) derrière l'en-tête du logo
                      Positioned(
                        top: -20, // Ajusté pour être subtilement visible derrière le logo
                        child: Container(
                          width: 260,
                          height: 260,
                          decoration: BoxDecoration(
                            // Supprimé le "const" global pour pouvoir lire dynamiquement le thème
                            color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                            child: const SizedBox.expand(),
                          ),
                        ),
                      ),

                      // 2. Contenu principal (Sans padding doublé pour respecter la consigne)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Logocontainer(),

                          // Espace exact de 28px entre le Logo et le Formulaire
                          SizedBox(height: 28.0),

                          LoginForm(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
