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
  //your code here
  String nsString = noSpaces(word);
  String olString = onlyLetters(nsString);
  String ncString = noCaps(olString);
  if (reverse(ncString).equals(ncString) == true)
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
      for (int i = str.length();i> 0;i--)
  {
    sNew = sNew + str.substring(i-1,i);
  }
  return sNew;
}
public String noSpaces(String str)
{
  String x = new String();
  for (int i = 0; i < str.length();i++)
  {
    if(str.substring(i,i+1).equals(" ") == false)
    x = x + str.substring(i,i+1);
  }
  return x;
}
public String onlyLetters(String str)
{
  String y = new String();
    for (int i = 0; i < str.length();i++)
  {
    if (Character.isLetter(str.charAt(i)) == true)
    y =y + str.charAt(i);
  }
  return y;
}
public String noCaps(String str)
{
  return str.toLowerCase();
  
}