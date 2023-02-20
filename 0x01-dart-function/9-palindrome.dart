bool isPalindrome(String s){
  if(s.length < 3){
    return false;
  }
  String palin = s.split('').reversed.join('');
  if (palin != s){
    return false;
  }
  return true;

}