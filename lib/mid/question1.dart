void main() {
  
  List<int> scores = [85, 92, 78, 64, 88];

  double average = scores.reduce((a, b) => a + b) / scores.length;
  print('Average Score: $average');

  // Print "Pass" or "Fail" for each score
  for (var score in scores) {
    if (score >= 70) {
      print('$score: Pass');
    } else {
      print('$score: Fail');
    }
  }
}
