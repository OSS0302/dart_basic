class Book extends TangibleAssert{
  String isbn;

  Book({
    required this.isbn,
  });

}

abstract class Assert{
  String name;
  int price;

  Assert({
    required this.name,
    required this.price,
  });

  abstract interface class Thing{
    double get weight;
    weight(double value);
  }
}