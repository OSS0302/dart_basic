int findMax(List<int> maxList) {
  final List<int> maxList = [2, 5, 1, 9, 3];
  maxList.sort();
  final max = maxList.last;
  return max;
}
int findMix(List<int> maxList) {
  final List<int> minList = [2, 1, 5, 6, 7, 8, 9];
  minList.sort();
  final mix = minList.first;
  return mix;

}