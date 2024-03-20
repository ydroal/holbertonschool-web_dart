bool isPalindrome(String s) {
  if (s.length < 3) return false;

  String forward = '';
  for (int i = s.length - 1; i >= 0; i--) {
    forward += s[i];
  }
  return s == forward;
}