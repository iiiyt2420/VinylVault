void main() {
  final albums = ['Nevermind', 'Thriller', 'Abbey Road'];
  for (final album in albums) {
    print(album);
  }
  var totalSeconds = 0;
  var durations = [2580, 4732, 3600, 2900, 4100];
  for (final duration in durations) {
    print(duration);
    totalSeconds += duration;
  }
  print('Загальна тривалість: ${totalSeconds ~/ 60} хвилин');
  print('Загальна тривалість в секундах: $totalSeconds секунд');
}
