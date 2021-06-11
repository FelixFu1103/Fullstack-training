using System;

namespace Exercise5
{
    class Program
    {
        static void Main(string[] args)
        {
            Box b1 = new Box();
            Box b2 = new Box();
            Box b3 = new Box();

            b1.setLength(1);
            b1.setBreadth(2);
            b1.setHeight(3);

            b2.setLength(4);
            b2.setBreadth(5);
            b2.setHeight(6);

            b3.setLength(7);
            b3.setBreadth(8);
            b3.setHeight(9);

            Console.WriteLine($"Volume of Box1: {b1.getVolume()}");
            Console.WriteLine($"Volume of Box2: {b2.getVolume()}");
            Console.WriteLine($"Volume of Box3: {b3.getVolume()}");

        }

    }
}
