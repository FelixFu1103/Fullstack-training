using System;

namespace Exercise9
{

    class A
    {
        int n;
        string s;
        public A(int n)
        {
            this.n = n;
        }

        public int num()
        {
            return n;
        }
        //other stuff…
    }
    class Program
    {
        
        static void Main(string[] args)
        {
            A[] v = new A[10];
            var rand = new Random();
            for (int i = 0; i < v.Length; i++) {
                int num = rand.Next(1, 50);
                v[i] = new A(num);
            }

            Console.Write("Array before sorting: ");
            foreach (A i in v)
            {
                Console.Write(i.num() + " "); // before sorting
            }

            Console.Write("\nAfter sorting:");
            Array.Sort(v, delegate (A x, A y) { return x.num().CompareTo(y.num()); });
            foreach (A i in v)
            {
                Console.Write(i.num() + " "); // after sorting
            }
   
        }
    }
}
