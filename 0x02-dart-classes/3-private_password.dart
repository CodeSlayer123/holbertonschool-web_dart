class Password {
   String _password = '';
   

   Password({String password = ''}) {
    this._password = password;
  }

   bool isValid() {
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])';
    if (this._password.length < 8 || this._password.length > 16)
      return false;
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(this._password);
   }

   @override
   String toString() {
    return 'Your Password is: ${this._password}';
}

}