import '6-password.dart';

class User {
  String name;
  int age;
  double height;
  int id;
  late String _user_password;
  late Password _password_obj;


  User({
    required this.name, 
    required this.age, 
    required this.height, 
    required this.id, 
    required String user_password,
    }) {
        this.user_password = user_password;
        _password_obj = Password(password: user_password); // _password_objを初期化
    }

  set user_password(String newPassword) {
      _user_password = newPassword;
      _password_obj = Password(password: newPassword); // パスワードオブジェクトを更新
  } 
  
  Map toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height
      // 'user_password': this.user_password
    };
  }

static User fromJson(Map<dynamic, dynamic> userJson) {

  return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password']
    );
}
  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${this._password_obj.isValid()})';
  }
}