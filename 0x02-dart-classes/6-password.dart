class Password {
   String _password = '';
   

   Password({String password = ''}) {
    this._password = password;
  }

   bool isValid(password) {
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])';
    if (password.length < 8 || password.length > 16)
      return false;
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(password);
   }

   @override
   String toString() {
    return 'Your Password is: ${this._password}';
  }

  String get password {
    return password;
  }

  void set password(String password) {
    _password = password;
  }



}