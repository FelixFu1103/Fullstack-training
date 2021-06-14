using System;
using System.Collections.Generic;

namespace Exercise3
{
    public class Records
    {
        public string date; 
        public string description;
        public decimal amount;
        public string category;

        public string Date { get; set; }
        public string Descrption {get; set;}
        public decimal Amount { get; set; }
        public string Category { get; set; }

        public override string ToString()
        {
            return date + "\t" + description + "\t" + amount + "\t" + category;
        }

        public List<Records> expenseList (string date, string description, decimal amount, string category = "Empty")
        {

        }
    }
}
