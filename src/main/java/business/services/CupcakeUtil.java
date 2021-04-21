package business.services;

public class CupcakeUtil
{
    public static int calcCupcakePrice(int toppingPrice,int bottomPrice,int amount)
    {
        return (toppingPrice+bottomPrice)*amount;
    }
}
