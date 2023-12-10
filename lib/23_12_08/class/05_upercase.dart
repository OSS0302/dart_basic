void main(){

  String str1 = 'Hello World';
  String str3 = 'Hello Flutter';
  String str2 = str1;
  String str4 = str3;

  // 소문자 -> 대문자
  str2.toUpperCase();
  // 대문자 -> 소문자
  str3.toLowerCase();

  print(str1);
  print(str2);
  print(str4);

}