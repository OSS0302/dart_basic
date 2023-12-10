// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다

void main() {
  // 테스트
  bool isVowel(int no, String value) {
    if (value.toLowerCase() == 'a' ||
        value.toLowerCase() == 'e' ||
        value.toLowerCase() == 'i' ||
        value.toLowerCase() == 'o' ||
        value.toLowerCase() == 'u') {
      return true;
    } else {
      return false;
    }
  }

  // 소문자
  print(isVowel(1, 'a'));
  print(isVowel(2, 'e'));
  print(isVowel(3, 'i'));
  print(isVowel(4, 'o'));
  print(isVowel(5, 'u'));

  // 대문자
  print(isVowel(1, 'A'));
  print(isVowel(2, 'E'));
  print(isVowel(3, 'I'));
  print(isVowel(4, 'O'));
  print(isVowel(5, 'U'));

  // 소
  print(isVowel(1, 'W'));
  print(isVowel(1, 'w'));
}

class Word {
  String word = '';

  bool isVowel(int no, String value) {
    if (value.toLowerCase() == 'a' ||
        value.toLowerCase() == 'e' ||
        value.toLowerCase() == 'i' ||
        value.toLowerCase() == 'o' ||
        value.toLowerCase() == 'u') {
      return true;
    } else {
      false;
    }

    return word.substring(no, no + 1) == 'a';
  }
}
