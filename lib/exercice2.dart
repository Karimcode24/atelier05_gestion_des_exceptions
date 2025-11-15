// Atelier 05 – Gestion des exceptions
// Exercice 2 : Gérer le format des données avec on FormatException et finally

import 'dart:io';

void runExercice2() {
  print("=== Exercice 2 : Gestion du format de l'âge ===");

  stdout.write("Veuillez saisir votre âge : ");
  String? saisie = stdin.readLineSync();

  try {
    int age = int.parse(saisie!);
    print("Vous avez $age ans.");
  } on FormatException {
    print("Format invalide : veuillez entrer un nombre entier.");
  } finally {
    print("Fin d'opération");
  }

  print("Programme terminé pour l'exercice 2.");
}
