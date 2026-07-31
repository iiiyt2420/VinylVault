void main() {
  const maxRareStock = 3;
  const rareYear = 1980;
  const maxPriceThreshold = 5000.0;
  const avaragePriceThreshold = 2500.0;
  const minPriceThreshold = 1000.0;
  double discount;
  final price = 3240.0;
  final stock = 5;
  final condition = 'good';
  final yearReleased = 2003;

  if (price < minPriceThreshold) {
    print('бюджетна ціна');
  } else if (price < avaragePriceThreshold) {
    print('середня ціна');
  } else if (price < maxPriceThreshold) {
    print('премуім ціна');
  } else {
    print('колекційна ціна');
  }

  final status = (stock > 0) ? 'в наявності' : 'немає в наявності';
  print('Статус: $status');

  switch (condition) {
    case 'mint':
      discount = 0.0;
      print('нова');
    case 'good':
      discount = 0.1;
      print('в хорошому стані');
    case 'fair':
      discount = 0.25;
      print('в задовільному стані');
    case 'poor':
      discount = 0.4;
      print('в поганому стані');
    default:
      print('стан не визначено');
      discount = 0.0;
  }

  print('сума зі знижкою: ${(price - (price * discount)).toStringAsFixed(2)}');

  if ((yearReleased < rareYear) && (condition != 'poor') && (stock < maxRareStock)) {
    print('Цей альбом є рідкісним і колекційним');
  } else {
    print('Цей альбом не є рідкісним і колекційним');
  }
}
