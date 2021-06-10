using System;

namespace Exercise5
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Entter the number of rows: ");
            int rows = Convert.ToInt32(Console.ReadLine());
            Console.Write("\n");
            int lastInt = 0, j;
            for (int i = 0; i < rows; i++)
            {
                for (j = 0; j <= i; j++)
                {
                    if (lastInt == 0)
                    {
                        Console.Write(1);
                        lastInt = 1;
                    } else if (lastInt == 1)
                    {
                        Console.Write(0);
                        lastInt = 0;
                    }
                }
                Console.Write("\n");
            }
        }
    }
}


