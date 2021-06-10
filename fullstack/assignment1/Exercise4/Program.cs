using System;

namespace Exercise4
{
    class Program
    {
        static void Main(string[] args)
        {
            PrintArmstrongNumber();
        }

        static void PrintArmstrongNumber()
        {
            int num1, num2;
            Console.WriteLine("Your first number: ");
            num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Your second number: ");
            num2 = Convert.ToInt32(Console.ReadLine());

            for (int i = num1; i <= num2; i++)
            {
                int num = i;
                int armstrong = 0;
                while (num > 0)
                {
                    int current = num % 10;
                    armstrong += current * current * current;
                    num /= 10;
                }
                if (armstrong == i)
                {
                    Console.WriteLine(i);
                }
            }
        }
    }
}
