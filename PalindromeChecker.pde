public void setup()
{
  String lines[] = loadStrings("palindromes.txt");

  println("there are " + lines.length + " lines");

  for (int i = 0; i < lines.length; i++) 
    if(palindrome(lines[i]) == true)
      println(lines[i] + " IS a palindrome.");
    else
      println(lines[i] + " is NOT a palindrome.");

}

public boolean palindrome(String sWord)
{
  String temp = new String();

  temp = onlyLetters(noSpaces(sWord.toLowerCase()));

  if(temp.equals(reverse(temp)))
    return true;
    
  return false;
}

public String reverse(String sWord)
{
  String sNew = new String();

  for(int i = sWord.length(); i > 0; i--)
    sNew += sWord.substring(i - 1, i);

  return sNew;
}

public String noSpaces(String sWord)
{
  String word = new String();

  for(int i = 0; i < sWord.length(); i++)
    if(!sWord.substring(i, i + 1).equals(" "))
      word += sWord.substring(i, i + 1);

  return word;
}

public String onlyLetters(String sString){
  String temp = new String();
  
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      temp += sString.charAt(i);
      
  return temp;
}