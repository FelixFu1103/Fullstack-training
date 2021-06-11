using System;

namespace Exercise4
{
    class Program
    {
        static void Main(string[] args)
        {
            int[,] matrix = new int[,] { { 1, 2, 3 }, { 4, 5, 6 }, { 7, 8, 9 } };
            PrintSpiral(matrix);
        }

        static void PrintSpiral(int[,] matrix)
        {
            int rowStart = 0, rowEnd = matrix.GetLength(0) - 1;
            int colStart = 0, colEnd = matrix.GetLength(1) - 1;

            Console.Write("Spiral print: ");
            while (rowStart <= rowEnd && colStart <= colEnd)
            {
                for (int i = rowStart; i <= colEnd; i++)
                {
                    Console.Write(matrix[rowStart,i]);
                }
                rowStart++;
                for (int i = rowStart; i <= rowEnd; i++)
                {
                    Console.Write(matrix[i, colEnd]);
                }
                colEnd--;
                if (rowStart <= rowEnd)
                {
                    for (int i = colEnd; i >= colStart; i--)
                    {
                        Console.Write(matrix[rowEnd, i]);
                    }
                }
                rowEnd--;
                if (colStart <= colEnd)
                {
                    for (int i = rowEnd; i >= rowStart; i--)
                    {
                        Console.Write(matrix[i, colStart]);
                    }
                }
                colStart++;
            }
        }
    }
   
}

// 1 2 3
// 4 5 6
// 7 8 9
// print: 1 2 3 6 9 8 7 4 5
