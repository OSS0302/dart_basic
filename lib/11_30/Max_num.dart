main(){
  /*
   더 큰수 판별하기
   두정 수중 더 큰수를 출력하기
   A와B가 같다면 'eq' 출력하기
  */
// a <b

 numP(10 ,10); // eq
 numP(10 ,20); // 20
 numP(20, 10); // 20

}
void numP(int a, int b){
  if(a <b){
    print(b);
  }else if( a == b ){
    print('eq');
  }else if (a >b){
     print(a);
  }
}