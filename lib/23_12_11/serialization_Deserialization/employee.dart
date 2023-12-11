void main() {
  final json = {
    "name": '홍길동',
    "age": 41,
  };

  // 임원 직렬화
  final employee1 = Employee(employeeName: '홍길동', age: 41);
  print(employee1.toJson());

  // 임원 역직렬화
  Employee employee2 = Employee.fromJson({
    'name': '홍길동',
    'age': 41,
  });
  print(employee2.toJson());


  // 부서 직렬화
  final department1 =
  Department(name: '총무부 ', leader: Employee(employeeName: '홍길동', age: 41));
  print(department1.toJson());




  // 부서 역질력화
  Department  department2 = Department.fromJson({
    "name": '홍길동',
    "leader": 'leader',
  });
  print(department2.toJson());
}

class Employee {
  String employeeName;
  int age;

  Employee({
    required this.employeeName,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': employeeName,
      'age': age,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      employeeName: map['name'],
      age: map['age'] ?? 0,
    );
  }


}

class Department {
  String name;
  Employee leader;

  Department({
    required this.name,
    required this.leader,
  });

  // this 를 사용할 수 없다.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader.employeeName,
      'age': leader.age,
    };
  }

  // 역 직렬화
  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      name: map['name'],
      leader: map['리더'],
    );
  }

  // 직렬화
  Map<String, dynamic> toJsonSerialization() {
    return {
      'name': name,
      'leader': leader,
    };
  }


}
