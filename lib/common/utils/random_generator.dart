import 'dart:math';

String generateRandomString() {
  final random = Random();
  final length =
      random.nextInt(11) + 5; // Generates a random length between 5 and 15
  const charset =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

  return List.generate(length, (_) => charset[random.nextInt(charset.length)])
      .join();
}

int generateRandomInt() {
  Random random = Random();
  return random.nextInt(100) + 1;
}

bool generateRandomBool() {
  Random random = Random();
  return random.nextBool();
}
