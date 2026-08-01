void main() {
  for (int i = 1; i <= 10; i++) {
    print('Крок $i');
  }
  for (int i = 1; i <= 20; i++) {
    if (i % 2 != 0) {
      continue;
    }
    print('Парне число: $i');
  }

  var totalSeconds = 0;
    for (int i = 0; i < 10; i++) {
      totalSeconds += 2400;
    }
  int totalMinutes = totalSeconds ~/ 60;
  print('Загальна тривалість: $totalMinutes хвилин');
  
  double price = 5000.0;
  int steps = 0;

  while (price > 1000.0) {
    price *= 0.85;
    steps++;

    print('Крок $steps: Ціна впала до ${price.toStringAsFixed(2)}');
  }
  print('Знадобилося $steps кроків, щоб ціна стала меншою за 1000.');

  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 7 ==0) {
      print('Знайдено перше таке число: $i');
      break;
    }
  }
  //while (true) {
    //print('Цей текст буде друкуватися безкінечно! Натисни Ctrl + C');
  //}
}