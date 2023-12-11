import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dart_basic/23_12_04/wand.dart';

void main() {
  final json = {
    "name": "Person1",
    "email": "person@example.com",
    "gender": "man",
    "age": 10,
  };
  // json 타입 확인하기
  print(json.runtimeType);

  final person1 = Person(
    name: '사람1',
    email: 'person@example.com',
    gender: 'man',
    age: 23,
  );
  print(person1.toJson());

  Person person2 = Person.fromJson({
    'name': '사람2',
    'email': 'person@example.com',
    'gender': 'woman',
    'age': 24,
  });

  print(person2.toJson());

  File file = File('person.txt');
  //file.writeAsStringSync(jsonEncode(person2.toJson()));

  String personJson = file.readAsStringSync();
  print(personJson);

  Person person3 = Person.fromJson(jsonDecode(personJson));

  print(person3.toString());
}


class Person {
  String name;
  String email;
  String gender;
  int age;

  Person({
    required this.name,
    required this.email,
    required this.gender,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'gender': gender,
      'age': age,
    };
  }

  // 역 직렬화
  factory Person.fromJson(Map<String, dynamic> map) {
    return Person(
      name: map['name'],
      email: map['email'],
      gender: map['gender'],
      age: map['age'] ?? 0,
    );
  }

  // 꼭 필요한경우가 아니면 toString을  굳이 안해도 된다.
  @override
  String toString() {
    return 'Person{name: $name, email: $email, gender: $gender, age: $age}';
  }

  //직렬화
  Map<String, dynamic> toJsonSerialization() {
    return {
      'name': name,
      'email': email,
      'gender': gender,
      'age': age,
    };
  }
}
