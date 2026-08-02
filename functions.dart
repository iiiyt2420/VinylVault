const rareYear = 1980;
const maxRareStock = 3;

int toMinutes(int seconds) => seconds ~/ 60;

double applyDiscount(double price, double discount) =>
    price - (price * discount);

double getDiscountFor(String condition) {
  switch (condition) {
    case 'mint':
      return 0.0;
    case 'good':
      return 0.1;
    case 'fair':
      return 0.25;
    case 'poor':
      return 0.4;
    default:
      return 0.0;
  }
}

bool isRareAlbum({
  required int yearReleased,
  required String condition,
  required int stock,
}) =>
    (yearReleased < rareYear) &&
    (condition != 'poor') &&
    (stock < maxRareStock);

String albumDescription({
  required String artistName,
  required String albumTitle,
  required int yearReleased,
}) =>
    'Альбом: $albumTitle, Виконавець: $artistName, Рік випуску: $yearReleased';

void printAlbumReport({
  required String albumTitle,
  required String artistName,
  required int yearReleased,
  required double price,
  required String condition,
  required int stock,
  required int timeSeconds,
}) {
  print(
    'Опис альбому: ${albumDescription(
      artistName: artistName, 
      albumTitle: albumTitle, 
      yearReleased: yearReleased)}',
  );
  print('ТривалістьЖ: ${toMinutes(timeSeconds)} хвилин');
  print('Ціна зі знижкою: ${applyDiscount(price, getDiscountFor(condition)).toStringAsFixed(2)}');
  print('Чи є альбом рідкісним: ${isRareAlbum(yearReleased: yearReleased, condition: condition, stock: stock)}');
}

void main() {
  printAlbumReport(
    albumTitle: 'Number Ones [2LP]',
    artistName: 'Michael Jackson',
    yearReleased: 2003,
    price: 3240.0,
    condition: 'good',
    stock: 5,
    timeSeconds: 4732,
  );
  printAlbumReport(
    albumTitle: 'Thriller',
    artistName: 'Michael Jackson',
    yearReleased: 1982,
    price: 5000.0,
    condition: 'mint',
    stock: 2,
    timeSeconds: 2580,
  );
}
