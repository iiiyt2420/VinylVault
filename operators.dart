void main() {
  final albumTitle = 'Number Ones [2LP]';
  final artistName = 'Michael Jackson';
  final yearReleased = 2003;
  final price = 3240.0;
  final isAvailable = true;
  final quantityInStock = 5;
  final timeSeconds = 4732;
  final trackCount = 18;
  final timeMinutes = timeSeconds ~/ 60;
  final timeRemaining = timeSeconds % 60;
  final timePerTrack = timeSeconds ~/ trackCount;
  final costPerTrack = price / trackCount;
  final isLongPlay = timeSeconds > 2700;
  final payNow = isAvailable && price < 4000.0;
  final discounted = isLongPlay || trackCount > 15;
  print('$timeMinutes хвилин $timeRemaining секунди');
  print('Середня тривалість треку: $timePerTrack секунди');
  print('Вартість кожного треку: $costPerTrack');
  print('Чи є це довгим плейтом? $isLongPlay');
  print('Чи можна купити зараз? $payNow');
  print('Чи діє акція? $discounted');

  print(40 / 8);
  print(40 ~/ 8);
}