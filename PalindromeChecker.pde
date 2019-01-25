public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = onlyLetters(noCapitals(noSpaces(word)));
  if (reverse(word).equals(word)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = 0; i < str.length(); i++){
      String lett = str.substring(i,i+1);
      sNew = lett + sNew;
    }

    return sNew;
    
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String onlyLetters(String sString){
String justlet = "";
for(int x = 0; x < sString.length(); x++)
  if (Character.isLetter(sString.charAt(x)) == true)
    justlet = justlet + sString.substring(x,x+1);
  return justlet;
  
}
public String noSpaces(String sWord){
  String noSpace = "";
  for (int i = 0; i < sWord.length(); i++){
    if (!(sWord.substring(i,i+1).equals(" ")))
      noSpace = noSpace + sWord.substring(i,i+1);
  }
return noSpace;
}


