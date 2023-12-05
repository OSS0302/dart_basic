class Sword {
  String name;
  int damage;

  Sword({
    required this.name,
    required this.damage,
  });
}

void main() {
  final sword1 = Sword(
    name: '불의검',
    damage: 10,

  );
  final sword2 = Sword(name: '물의검 ', damage: 20);
  final sword3 = Sword(name: '목검', damage: 5);
}