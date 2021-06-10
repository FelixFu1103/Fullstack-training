using System; 
namespace Exercise7
{
    class BankAccount
    {
        int pinNum;
        decimal balance;
        public BankAccount(int pinNum, decimal balance=1000m)
        {
            this.pinNum = pinNum;
            this.balance = balance;
        }

        public decimal GetBalance()
        {
            return balance;
        }

        public void Withdraw(decimal amount)
        {
            if (amount > balance)
            {
                Console.WriteLine("Insufficient amount to withdraw");
                Console.WriteLine($"Current balance: {balance}");
            } else
            {
                balance -= amount;
                Console.WriteLine($"Sucessfully withdraw: {amount}");
                Console.WriteLine($"Current balance: {balance}");
            }
        }

        public void Deposite(decimal amount)
        {
            balance += amount;
            Console.WriteLine($"Sucessfully deposited ! Current balance: {balance}");
        }
    }
}