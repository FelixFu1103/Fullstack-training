using System;

namespace Exercise1
{
    class Program
    {
        static void Main(string[] args)
        {
            Rectangle rect = new Rectangle();
            rect.GetInput();
            Calculate(rect);

            Circle cir = new Circle();
            cir.GetInput();
            Calculate(cir);
        }

        static void Calculate(Shape1 S)
        {
            Console.WriteLine("Area : {0}", S.Area());
            Console.WriteLine("Circumference : {0}", S.Circumference());
        }
    }
}
