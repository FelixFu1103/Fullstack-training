using System;

namespace Exercise7
{
    class Program
    {
        static void Main(string[] args)
        {
            int pinNum;
            Console.WriteLine("Enter your Pin Number: ");
            pinNum = Convert.ToInt32(Console.ReadLine());
            BankAccount bankacount = new BankAccount(pinNum);
            AtmService atmservice = new AtmService(bankacount);
        }
    }
}
