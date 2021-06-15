using System;

namespace Exercise5
{
    public class Myclass
    {
        public delegate void LogHandler(string message);

        public void process(LogHandler logHandler)
        {
            if (logHandler != null)
            {
                logHandler("begin");
            }
            if (logHandler != null)
            {
                logHandler("End");
            }
        }
        public class Mylogger
        {
            public void logger(string s)
            {
                Console.WriteLine(s);
            }
        }

        public class TestApplication
        {
            static void Logger(string s)
            {
                Console.WriteLine(s);
            }
            static void Main(string[] args)
            {
                Mylogger f1 = new Mylogger();
                Myclass myclass = new Myclass();
                Myclass.LogHandler myLogger = null;
                myLogger += new Myclass.LogHandler(Logger);
                myLogger += new Myclass.LogHandler(f1.logger);
                // print
                myclass.process(myLogger);
                return;
            }
        }

    }
}
