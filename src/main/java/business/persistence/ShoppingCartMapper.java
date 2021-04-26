package business.persistence;

import business.entities.Shoppingcart;
import business.exceptions.UserException;

public class ShoppingCartMapper
{
    private Database database;
    private Shoppingcart shoppingcart;

    public ShoppingCartMapper(Database database) {
        this.database = database;
    }
    public void insertOrder(Shoppingcart shoppingcart) throws UserException
    {
        String sql = "INSERT INTO order (user_id, price) VALUES (?, ?)";


    }
    public void insertCupcakes(Shoppingcart shoppingcart) throws UserException
    {
        
    }
}
