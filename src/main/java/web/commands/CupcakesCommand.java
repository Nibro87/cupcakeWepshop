/*package web.commands;


import business.entities.Topping;
import business.exceptions.UserException;
import business.persistence.ToppingMapper;

import javax.servlet.http.HttpServlet;
import java.util.List;

public class CupcakesCommand extends CommandUnprotectedPage {
ToppingMapper toppingMapper;


    public CupcakesCommand(String pageToShow){ super(pageToShow); }

    @Override
    public String execute(HttpServlet request, HttpServlet response) throws UserException {

        int topId;
        int bottomId;
        int amount;

        try
        {
        topId = Integer.parseInt(request.getInitParameter("topping"));
        bottomId = Integer.parseInt(request.getInitParameter("bottom"));
        amount = Integer.parseInt(request.getInitParameter("amount"));

        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    List<Topping> toppingList =(List<Topping>) request.getServletContext().setAttribute("toppingsList",toppingMapper.getAllToppings());

        return null;
    }


}*/