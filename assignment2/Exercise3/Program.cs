using System;

namespace Exercise3
{
    class Program
    {
        static int A, B;
        static void Main(string[] args)
        {
            int count = 0;
            Console.WriteLine("Enter two numbers to calculate the whole squre within the interval");
            Console.WriteLine("Enter first number: ");
            A = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter second number: ");
            B = Convert.ToInt32(Console.ReadLine());
            count = solution(A, B);
            Console.WriteLine($"There are {count} within the interval.");
        }

        static int solution(int A, int B)
        {
            int count = 0;
            for (int i = A; i <= B; i++)
            {
                if (IsPerfectSqure(i))
                    count++;
            }
            return count;
        }

        static bool IsPerfectSqure(int n)
        {
            for (int i = 1; i * i <= n; i++)
            {
                if ((n % i == 0) && (n / i == i))
                    return true;
            }
            return false;
        }
    }
}


// 4 17