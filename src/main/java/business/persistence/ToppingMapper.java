package business.persistence;

import business.entities.Cupcake;
import business.entities.Topping;
import business.exceptions.UserException;

import java.awt.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ToppingMapper {

    private Database database;

    public ToppingMapper(Database database) {
        this.database = database;
    }


    public  List<Topping> getAllToppings() throws UserException {

        List<Topping> ToppingsList = new ArrayList<>();

        try (Connection connection = database.connect()) {
            String sql = "SELECT * FROM topping";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {

                    String topping = rs.getString("topping");
                    int price = rs.getInt("price");


                    ToppingsList.add(new Topping(topping,price));
                }


            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return ToppingsList;
    }
}
