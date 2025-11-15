// Atelier 05 – Gestion des exceptions
// Exercice 5 : Exception personnalisée NombreNegatifException

import 'dart:io';

void runExercice5() {
  print("=== Exercice 5 : NombreNegatifException ===");

  stdout.write("Veuillez entrer un nombre : ");
  String? saisie = stdin.readLineSync();

  try {
    double nombre = double.parse(saisie!);
    verifierNombrePositif(nombre);
    double carre = nombre * nombre;
    print("Le carré de $nombre est $carre.");
  } on FormatException {
    print("Format invalide : vous devez entrer un nombre (ex: 3 ou 4.5).");
  } on NombreNegatifException catch (e) {
    print(e);
  } catch (e) {
    print("Une erreur inattendue est survenue : $e");
  } finally {
    print("Fin d'opération");
  }

  print("Programme terminé pour l'exercice 5.");
}

// Exception personnalisée
class NombreNegatifException implements Exception {
  final String message;

  NombreNegatifException(this.message);

  @override
  String toString() => "NombreNegatifException: $message";
}

// Fonction qui lève l'exception si le nombre est négatif
void verifierNombrePositif(double n) {
  if (n < 0) {
    throw NombreNegatifException(
        "Le nombre $n est négatif. Un nombre positif est requis.");
  }
}
