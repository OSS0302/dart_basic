//다음 동작을 할 수 있도록 Book 클래스를 수정하시오.
// 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 Set 에 넣으면 동일 객체로 판단한다.
// Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
// deep copy 를 지원한다

void main() {
  // 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 Set 에 넣으면 동일 객체로 판단한다.
  final books = <Book>{};
  final book1 = Book(
    title: '코딩책',
    publishDate: DateTime(2023, 12, 7),
    comment: '코딩이어렵다.',
  );
  final book2 = Book(
    title: '코딩책',
    publishDate: DateTime(2023, 12, 7),
    comment: '코딩이어렵다정말로 .',
  );

  //set 데이터 넣기
  books.add(book1);
  books.add(book2);

  // 같은지 비교 해서 출력하기
  print(book1 == book2);
  print(books);

  // Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
  //정렬하기
  final List<Book> booksSort = [
    Book(
      title: '코딩',
      publishDate: DateTime(2023, 12, 06),
      comment: '코딩이어렵다정말로',
    ),

    Book(
      title: '코딩1',
      publishDate: DateTime(
        2023,
        12,
        07,
      ),
      comment: '코딩이어렵다정말로이거 맞나',
    ),

    Book(
      title: '코딩2',
      publishDate: DateTime(2023, 12, 05),
      comment: '코딩이어렵다정말로이거많나 어렵네',
    )
  ];

  // 정렬 확인하기
  booksSort.sort();
  print(booksSort);

  // copy with 테스트
  final codingBook = Book(title: '코딩책', publishDate: DateTime(2023, 12, 05), comment: '코딩이어렵다정말로이거많나 어렵네  ' );

  final b1= codingBook.copyWith(title: '코딩책', publishDate: DateTime(2023, 12, 05), comment: '코딩이어렵다정말로이거많나 어렵네 살려줘... ');

  final b2 = codingBook.copyWith(title: '코딩책', publishDate: DateTime(2023, 12, 05));

  final b3 = codingBook.copyWith(title: '코딩책');

  final b4=codingBook.copyWith(title: '코딩');

  final b5=codingBook.copyWith(comment: '코딩.....');

  final b6=codingBook.copyWith(publishDate: DateTime(2023, 12, 05));

  //출력하기
 print('$b1');
 print(b2);
 print(b3);
 print(b4);
 print(b5);
 print(b6);


}

class Book implements Comparable<Book> {
  String title;
  String comment;
  DateTime publishDate = DateTime.now();

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  // 비교
  @override
  int compareTo(Book other) {
    final publishDateEqual = publishDate.compareTo(other.publishDate);

    return publishDateEqual;
  }


  @override
  String toString() {
    return 'Book{title: $title, comment: $comment, publishDate: $publishDate}';
  }


  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }
}
