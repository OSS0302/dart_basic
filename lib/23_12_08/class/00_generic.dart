void main(){
  // 다이나믹을 쓰지 말자
  // dynamic i =1;
  //
  // i.forEach(num) => print(num);
  // print(i.lengh);
  // i[0]=10;
  // i.asdfaseddjk();
  // i.absfa().aasdas();

  Object obj = 10;
  Numbers<int> num =Numbers();
    num.put(10);

}

class Numbers <E> {
  E? _data;

  void put(E data) => _data =data;


  E? get() => _data;
}