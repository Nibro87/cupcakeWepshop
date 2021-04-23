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

    public void removeFromCart(Cupcake cupcake){
        cupcakes.remove(cupcake);
    }

}
