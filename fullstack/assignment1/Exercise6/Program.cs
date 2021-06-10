using System;

namespace Exercise6
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the number of rows: ");
            int rows = Convert.ToInt32(Console.ReadLine());

            Console.Write("\n");

            

            printDiamond(rows);
        }

        static void printDiamond(int rows)
        {
            int count = rows - 1;
            for (int j = 1; j <= rows; j++)
            {
                for (int i = 1; i <= count; i++)
                {
                    Console.Write(" ");
                }
                count--;
                for (int i = 1; i <= 2 * j - 1; i++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }
            count = 1;
            for (int j = 1; j <= rows - 1; j++)
            {
                for (int i = 1; i <= count; i++)
                {
                    Console.Write(" ");
                }
                count++;
                for (int i = 1; i <= 2 * (rows - j) - 1; i++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }
            Console.ReadLine();
        }
    }
}
