package web.commands;

import business.entities.Topping;
import business.exceptions.UserException;
import business.services.CupcakeUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShoppingcartCommand extends CommandUnprotectedPage {




    public ShoppingcartCommand(String pageToShow) {
        super(pageToShow);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {
        
        int toppingPrice=Integer.parseInt(request.getParameter("toppingPrice"));
        int bottomPrice=Integer.parseInt(request.getParameter("bottomPrice"));
        int amount=Integer.parseInt(request.getParameter("amount"));
        int cupcakePrice= CupcakeUtil.calcCupcakePrice(toppingPrice,bottomPrice,amount);



        return pageToShow;
    }
}
