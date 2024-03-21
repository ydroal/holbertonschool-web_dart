class Password {
  String _password = '';

  // 名前付き引数を使ってプライベートフィールドを初期化
  Password({required password}) {
    this.password = password;
    //セッターを呼び出して、この引数の値をプライベートフィールド_passwordに代入
  }

  String get password => _password;

  set password(String password) {
      _password = password;
  } 
  

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) return false;
    if (!_password.contains(RegExp(r'[A-Z]'))) return false;
    if (!_password.contains(RegExp(r'[a-z]'))) return false;
    if (!_password.contains(RegExp(r'\d'))) return false;
    return true;
  }
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
