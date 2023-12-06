//추상클래스를 사용하여 IronMan Class에 method를 구현하기

abstract class IronMan {
  var name;
  var suitColor;

  // This is an abstract method. It must be implemented by subclasses.
  void fly();

  // This is an abstract method. It must be implemented by subclasses.
  void shootLasers();

  // This is an abstract method. It must be implemented by subclasses.
  void withstandDamage();
}

//@override 구문을 사용하여 abstract method 구현
class Mark50 extends IronMan {

  Mark50(String name , String suitColor): super();

  @override
  void fly(){
    print('${name} is flying');
  }

  @override
  void shootLasers() {
    print('${name} is shootLasers');
  }

  @override
  void withstandDamage() {
    print('${name} is huge Damige');
  }

}

void main(){
 Mark50 mark50 = Mark50('Mark50','siver');
    mark50.fly();
    mark50.shootLasers();
    mark50.withstandDamage();
}