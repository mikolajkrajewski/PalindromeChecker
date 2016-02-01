public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sNoob = new String();
  String sTemp = new String();
  for(int j=0; j<word.length(); j++)
  {
    if(!word.substring(j,j+1).equals(" ")&&!word.substring(j,j+1).equals("'")&&!word.substring(j,j+1).equals("!")&&!word.substring(j,j+1).equals(","))
    {
      sNoob = sNoob + word.substring(j,j+1);
    }
  }
  for(int i=sNoob.length()-1; i>=0; i--)
  {
    sTemp+=sNoob.substring(i,i+1);
  }
  if(sNoob.equalsIgnoreCase(sTemp))
  {
      return true;
  }
  return false;
}