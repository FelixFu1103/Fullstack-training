using System;

namespace Exercise2
{
    class Program
    {
        
        
        static void Main(string[] args)
        {
            
            Console.WriteLine("Enter array size: ");
            int size = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter array value one by one: ");
            int[] array = new int[size];
            

            for (int i = 0; i < array.Length; i++)
            {
                array[i] = Convert.ToInt32(Console.ReadLine());
            }

            for (int i = 0; i < array.Length; i++)
            {
                Console.WriteLine($"A[{i}] = " + array[i]);
            }
            int num = solution(array);
            Console.WriteLine($"Most often number in array is {num}");
        }

        static int solution(int[] A)
        {
            Array.Sort(A);
            int count = 1, maxCount = 1, res = A[0];

            for (int i = 1; i < A.Length; i++)
            {
                if (A[i] == A[i - 1])
                    count++;
                else
                    if (count > maxCount)
                    {
                        maxCount = count;
                        res = A[i - 1];
                    }
                    count = 1;
            }
            if (count > maxCount)
            {
                maxCount = count;
                res = A[A.Length - 1];
            }
            return res;
        }
    }
}
