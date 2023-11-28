main() {
  List<String> players = ['player1', 'player2', 'player3', 'player4'];
  int playerIndex = 0;
  // 현재 카운드
  int currentCount = 0;
  // 3의 배수 카운드
  int clapCount = 0;
  // 10의 배수 카운트
  int roolCount = 0;
  // 30의배수  카운드
  int ahhCount = 0;
  // 3의 배수 카운터 수
  int clapCountMax =0;
  List<int> clapCountPlayer = [0, 0, 0, 0];

  // 반복문

  for (var i = 1; i <= 100; i++) {
    String currentPlayer = players[playerIndex];
    if (i % 30 == 0) {
      print('${currentPlayer}:ahh');
      ahhCount++;
    } else if (i % 3 == 0) {
      print('${currentPlayer}:clap');
      clapCount++;
      clapCountPlayer[playerIndex]++;
    } else if (i % 10 == 0) {
      print('${currentPlayer}:rool');
      roolCount++;
    } else {
      print('${currentPlayer}:${i}');
    }
    playerIndex = (playerIndex + 1) % players.length;
  }
  print('clap의 총갯수: ${clapCount}');
  print('rool의 총 갯수: $roolCount');
  print('ahh의 총 갯수: $ahhCount');

  String playerMaxClap = "";

  for (var i = 0; i < players.length; i++) {
    int count = clapCountPlayer[i];
    print('${players[i]}:${count}');

    if (count > clapCountMax) {
      clapCountMax = count;
      playerMaxClap = players[i];
    }
  }
  print('가장 많은 3의배수 나온 player: ${playerMaxClap} ');
}
