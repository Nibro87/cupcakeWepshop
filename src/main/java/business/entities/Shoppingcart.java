package business.entities;

import java.util.ArrayList;
import java.util.List;

public class Shoppingcart {

    private List<Cupcake> cupcakes = new ArrayList<>();

    public Shoppingcart() {

    }

    public List<Cupcake> getCupcakes(){
        return cupcakes;
    }




    public int getCupcakeNumber(){
        return cupcakes.size();
    }

    public void addToCart(Cupcake cupcake){
        cupcakes.add(cupcake);
    }

    public void removeFromCart(int cupcakesIndex){
        cupcakes.remove(cupcakesIndex);
    }

    public int totalPrice()
    {
        int sum= 0;
        for(Cupcake cupcake:cupcakes)
        {
            sum+=cupcake.getPrice();
        }
        return sum;

    }

}
