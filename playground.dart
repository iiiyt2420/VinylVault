void main() {
  final albumTitle = 'Number Ones [2LP]';
  final artistName = 'Michael Jackson';
  final yearReleased = 2003;
  final price = 3240.0;
  final isAvailable = true;
  final quantityInStock = 5;
  print('Альбом: $albumTitle, Виконавець: $artistName, Рік випуску: $yearReleased, Ціна: $price, Наявність: $isAvailable, Кількість на складі: $quantityInStock');
  print('ціна зі знижкою: ${price * 0.8}');
}