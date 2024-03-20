bool isPalindrome(String s) {
  if (s.length < 3) return false;

  String forward = '';
  for (int i = s.length - 1; i >= 0; i--) {
    forward += s[i];
  }
  return s == forward;
}

String longestPalindrome(String s) {
  if (s.isEmpty || s.length < 3) return 'none';

  String longestPalindrome = '';
  for (int i = 0; i <= s.length - 1; i++) {
    // s.substringで文字列を最後まで抽出するために文字列の長さより１長い範囲でループ
    for (int j = i + 2; j <= s.length; j++) {
       String sub = s.substring(i, j);
       if (isPalindrome(sub) && sub.length > longestPalindrome.length) {
        longestPalindrome = sub;
    }
  }
  }
  return longestPalindrome.isNotEmpty ? longestPalindrome : 'none';
}