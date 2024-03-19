String longestUniqueSubstring(String str) {
  String res = '';
  
  for (int i = 0; i < str.length; i++) {
    String tempSub = '';
    Set<String> uniqueSub = Set();

    for (int j = i; j < str.length; j++) {
      String char = str[j];
      if (uniqueSub.contains(char)) {
        break;
      }
      tempSub += char;
      uniqueSub.add(char);
    }
    if (tempSub.length > res.length) {
      res = tempSub;
    }
  }
  return res;
}