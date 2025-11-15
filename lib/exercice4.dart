// Atelier 05 – Gestion des exceptions
// Exercice 4 : Exception personnalisée MotdepasseCourtException

import 'dart:io';

void runExercice4() {
  print("=== Exercice 4 : Vérifier mot de passe (Exception personnalisée) ===");

  stdout.write("Entrez un mot de passe : ");
  String? motdepasse = stdin.readLineSync();

  try {
    verifierMotdepassePersonnalisee(motdepasse!);
    print("Mot de passe accepté (longueur suffisante).");
  } on MotdepasseCourtException catch (e) {
    print(e); // utilise toString() de l'exception personnalisée
  } catch (e) {
    print("Une autre erreur est survenue : $e");
  }

  print("Programme terminé pour l'exercice 4.");
}

// Classe d'exception personnalisée
class MotdepasseCourtException implements Exception {
  final String message;

  MotdepasseCourtException(this.message);

  @override
  String toString() => "MotdepasseCourtException: $message";
}

// Fonction qui lève l'exception personnalisée
void verifierMotdepassePersonnalisee(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(
        "Le mot de passe est trop court (moins de 6 caractères).");
  }
}
