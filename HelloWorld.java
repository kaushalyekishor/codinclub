public class HelloWorld
{
	public static void main(String args[])
	{
		while(true)
		{
			System.out.println("Welcome to Helloworld");

			try
			{
			Thread.sleep(20000);
			}
			catch(Exception ex)
			{
			System.out.println(ex);
			}
		}
	}
}
