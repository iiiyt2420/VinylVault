void main() {
  final albumTitle = 'Number Ones [2LP]';
  final artistName = 'Michael Jackson';
  final yearReleased = 2003;
  var price = 3240.0;
  var isAvailable = true;
  var quantityInStock = 5;
  print('Альбом: $albumTitle, Виконавець: $artistName, Рік випуску: $yearReleased, Ціна: $price, Наявність: $isAvailable, Кількість на складі: $quantityInStock');
  print('ціна зі знижкою: ${price * 0.8}');
}