// Atelier 05 – Gestion des exceptions
// Exercice 1 : Try-Catch sur division par zéro

void runExercice1() {
  print("=== Exercice 1 : Division par zéro avec try-catch ===");

  int a = 12;
  int b = 0;

  try {
    int resultat = a ~/ b; // division entière
    print("Résultat : $resultat");
  } catch (e) {
    print("Division impossible");
  }

  print("Programme terminé (le programme ne s'est pas arrêté brutalement).");
}
