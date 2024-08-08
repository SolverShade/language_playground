namespace src
{
  public static class MathFun
  {
    public static void PrintNumbers(List<int> numbers)
    {
      foreach (int num in numbers)
      {
        Console.WriteLine(num);
      }
    }

    public static bool IsEven(int number)
    {
      if (number % 2 == 0)
        return true;
      else
        return false;
    }
  }
}
