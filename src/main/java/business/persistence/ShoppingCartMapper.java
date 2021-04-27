package business.persistence;

import business.entities.Cupcake;
import business.entities.Shoppingcart;
import business.exceptions.UserException;

import java.sql.*;
import java.util.List;

public class ShoppingCartMapper
{
    private Database database;
    private Shoppingcart shoppingcart;

    public ShoppingCartMapper(Database database) {
        this.database = database;
    }

    public void insertOrder(Shoppingcart shoppingcart) throws UserException
    {

        try (Connection connection = database.connect())

        {
            String sql = "INSERT INTO order (user_id, price) VALUES (?, ?)";
            try(PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
            {
                //todo: how to getUserId of sessionscope ps.setint(1,shoppingcart.getUserId);
                ps.setInt(2, shoppingcart.totalPrice());
                ps.executeUpdate();
                ResultSet ids = ps.getGeneratedKeys();
                ids.next();
                int orderId = ids.getInt(1);
                shoppingcart.setOrderId(orderId);

            }catch ( SQLException ex){
                throw new UserException(ex.getMessage());
            }


        }catch (SQLException ex){
            throw new UserException(ex.getMessage());
        }



    }
    public void insertCupcake(Cupcake cupcake) throws UserException
    {
        try (Connection connection = database.connect())

        {
            String sql = "INSERT INTO cupcake_entry (order_id, number,bottom_id, topping_id) VALUES (?, ?, ?, ?)";
            try(PreparedStatement ps = connection.prepareStatement(sql))
            {

                //todo

            }catch ( SQLException ex){
                throw new UserException(ex.getMessage());
            }


        }catch (SQLException ex){
            throw new UserException(ex.getMessage());
        }

    }
}
