void main() {
  const moreThan = 45;
  final price = 3240.0;
  final isAvailable = true;
  final timeSeconds = 4732;
  final trackCount = 18;
  final timeMinutes = timeSeconds ~/ 60;
  final remainingSeconds = timeSeconds % 60;
  final timePerTrack = timeSeconds ~/ trackCount;
  final costPerTrack = price / trackCount;
  final isLongPlay = timeSeconds > moreThan * 60;
  final canBuyNow = isAvailable && price < 4000.0;
  final hasDiscount = isLongPlay || trackCount > 15;
  print('$timeMinutes хвилин $remainingSeconds секунди');
  print('Середня тривалість треку: $timePerTrack секунди');
  print('Вартість кожного треку: ${costPerTrack.toStringAsFixed(2)}');
  print('Чи є це довгим плейтом? $isLongPlay');
  print('Чи можна купити зараз? $canBuyNow');
  print('Чи діє акція? $hasDiscount');

  print(40 / 8);
  print(40 ~/ 8);
}