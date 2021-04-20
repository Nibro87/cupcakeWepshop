package business.persistence;

import business.entities.Bottom;
import business.entities.Topping;
import business.exceptions.UserException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BottomMapper {

    private Database database;

    public BottomMapper(Database database) {
        this.database = database;
    }


    public  List<Bottom> getAllTBottoms() throws UserException {

        List<Bottom> BottomList = new ArrayList<>();

        try (Connection connection = database.connect()) {
            String sql = "SELECT * FROM bottom";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {

                    String name = rs.getString("bottom");
                    int price = rs.getInt("price");


                    BottomList.add(new Bottom(name,price));
                }


            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return BottomList;
    }
}
