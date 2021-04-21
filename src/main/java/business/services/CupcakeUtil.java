package business.services;

import business.entities.Cupcake;
import web.commands.ShoppingcartCommand;

import java.util.List;

public class CupcakeUtil
{

    public static int calcCupcakePrice(int toppingPrice,int bottomPrice,int amount)
    {
        return (toppingPrice+bottomPrice)*amount;
    }

    public static int calcTotalPrice(List<Cupcake> cupcakes){
        int totalPrice=0;
        for (int i = 0; i < cupcakes.size(); i++)
        {
            totalPrice+= cupcakes.get(i).getPrice();
        }

        return totalPrice;
    }
}
