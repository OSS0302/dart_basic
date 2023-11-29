class IronMan {
  String name;
  int powerLevel;

  IronMan(this.name, this.powerLevel);

  void shoot() {
    print('$name is shooting guns!');
  }
}
//MK3는 리펄서를 쏘고 하늘을 날수 있게 해보세요
//shoot() 메서드를 오버라이드 합니다.
//비행고도 값을 추가한뒤
//fly() 메서드를 추가하세요
class IronManMK3 extends IronMan {
  var flyheight;
  // 아이언맨 클래스로부터 이름과 파워레벨을 받겠다.
    IronManMK3(String name, int powerLevel, this.flyheight):super(name , powerLevel);
    // 재정의 하겠다.총 -> 레이저
    @override
    void shoot(){
      print('$name is shooting Laser!');
    }
    // fly 함수 추가
    void fly(){
      print('${name}  flying in ${flyheight}m');
    }
}

void main() {
  IronMan mk1 = IronMan("mk1", 10);

  IronManMK3 mk3 = IronManMK3("mk3", 20, 1000);

  mk1.shoot();

  mk3.shoot();

  mk3.fly();
}