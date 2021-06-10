using System;

namespace Exercise3
{
    class Program
    {
       
        static void Main(string[] args)
        {
            Console.WriteLine("Input the string: ");
            string s = Console.ReadLine();

            reverse(s);
        }

        static void reverse(string s)
        {
            string reversedString = string.Empty;
            for (int i = s.Length - 1; i >= 0; i--)
            {
                reversedString += s[i];

            }
            Console.WriteLine(reversedString);
        }
    }
}
