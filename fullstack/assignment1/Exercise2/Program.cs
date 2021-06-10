using System;

namespace Exercises2
{
    public class Arithmetic
    {
        int a, b;
        public static void Addition(int a, int b)
        {
            Console.WriteLine($"Answer = {a + b}");
        }

        public static void Subtraction(int a, int b)
        {
            Console.WriteLine($"Answer = {a - b}");
        }

        public static void Multiplication(int a, int b)
        {
            Console.WriteLine($"Answer = {a * b}");
        }

        public static void Division(int a, int b)
        {
            Console.WriteLine($"Answer = {a / b}");
        }

        public void operation()
        {
            Console.WriteLine("Your first number: ");
            a = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Your Second number: ");
            b = Convert.ToInt32(Console.ReadLine());
            READ:
            Console.WriteLine("Select the operation your want to do: 1. Addition 2. Subtraction 3. Multiplication 4. Division");
            int operation = Convert.ToInt32(Console.ReadLine());
                        switch (operation)
            {
                case 1:
                    Addition(a, b);
                    break;
                case 2:
                    Subtraction(a, b);
                    break;
                case 3:
                    Multiplication(a, b);
                    break;
                case 4:
                    Division(a, b);
                    break;
                default:
                    Console.WriteLine("Wrong operator");
                    goto READ;
            }
           
            
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Arithmetic arithmetic = new Arithmetic();
            arithmetic.operation();
        }
    }
}
