using System;

namespace Exercise2
{
    class A
    {
        protected int N=1;
        public A()
        {
            N++;
            Console.WriteLine("n = " + N.ToString());
        }
    }
    class B: A
   {
      public B()
      {
        N = 10;
        Console.WriteLine("n = " + N.ToString());
      }
   }

    class MainClass
    {
        [STATHread]

        static void Main(string[] args)
        {
            A a = new B();
        }
    }
}
