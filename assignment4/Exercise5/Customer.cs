using System;
using System.Collections.Generic;

namespace Exercise5
{
    public class Customer
    {

        public string Name { get; set; }
        public string City { get; set; }

        
        public override string ToString()
        {
            return Name + "\t" + City;
        }

    }
}
