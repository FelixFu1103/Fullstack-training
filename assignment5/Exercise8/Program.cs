using System;

namespace Exercise8
{
    
    
     abstract class A
     {
        int x;
        public abstract void f(int n);
        public virtual void g(uint n)
        {
            x = (int) n;
        }
        public override string ToString()
        {
            return x.ToString();
        }
    }

}
