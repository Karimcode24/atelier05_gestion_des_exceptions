// Atelier 05 – Gestion des exceptions
// Exercice 3 : Lever une Exception si le mot de passe est trop court

import 'dart:io';

void runExercice3() {
  print("=== Exercice 3 : Vérifier mot de passe (Exception classique) ===");

  stdout.write("Entrez un mot de passe : ");
  String? motdepasse = stdin.readLineSync();

  try {
    verifierMotdepasse(motdepasse!);
    print("Mot de passe accepté (longueur suffisante).");
  } catch (e) {
    print("Erreur : $e");
  }

  print("Programme terminé pour l'exercice 3.");
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Le mot de passe doit contenir au moins 6 caractères.");
  }
}
