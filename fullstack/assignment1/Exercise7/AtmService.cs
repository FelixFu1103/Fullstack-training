using System;
namespace Exercise7
{
    class AtmService
    {
        BankAccount bankaccount;
        public AtmService(BankAccount bankacount)
        {
            this.bankaccount = bankacount;
            READ:
            Console.WriteLine("******** Welcome To ATM Service *********\n");
            Console.WriteLine("1. Check Balance\n");
            Console.WriteLine("2. Withdraw Cash\n");
            Console.WriteLine("3. Deposit Cash\n");
            Console.WriteLine("4. Quit");
            Console.WriteLine("*****************************************");
            Console.WriteLine("Enter Your Choice:");
            int option = 0;
            option = Convert.ToInt32(Console.ReadLine());
    
            switch(option)
            {
                case 1:
                    Console.WriteLine($"Current balance: {bankacount.GetBalance()}");
                    break;
                case 2:
                    Console.WriteLine("Enter how much do you want to withdraw?");
                    Decimal amount = Convert.ToInt32(Console.ReadLine());
                    bankacount.Withdraw(amount);
                    break;
                case 3:
                    Console.WriteLine("Enter how much do you want to deposite?");
                    Decimal deposite = Convert.ToInt32(Console.ReadLine());
                    bankacount.Deposite(deposite);
                    break;
                case 4:
                    Console.WriteLine("Quitting the system, Bye");
                    break;
                default:
                    Console.WriteLine("Invalid input");
                    goto READ;
            }
        }
    }
}
