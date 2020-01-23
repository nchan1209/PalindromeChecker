public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean isPalindrome(String word){
  String h = onlyLetters(word);
  String i = h.toLowerCase();
  if(i.equals(reverse(i)))
  return true;
  else
  return false;
}
public String reverse(String hi){
  String s = "";
  int last = hi.length()-1;
  for(int i = last; i>=0; i--)
    s = s + hi.substring(i,i+1);
    
    return s;
}
public String onlyLetters(String word){
  String hi = new String();
  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i))== true)
    hi+=word.charAt(i);
  }
  return hi;
}

