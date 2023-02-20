class Password {
   String password = '';

   bool isValid() {
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])';
    if (this.password.length < 8 || this.password.length > 16)
      return false;
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(this.password);
   }

   @override
   String toString() {
    return 'Your Password is: ${this.password}';
}

}