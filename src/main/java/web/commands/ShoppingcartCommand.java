package web.commands;

import business.entities.Topping;
import business.exceptions.UserException;
import business.persistence.BottomMapper;
import business.persistence.Database;
import business.persistence.ToppingMapper;
import business.services.CupcakeUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShoppingcartCommand extends CommandUnprotectedPage {
    private Database database;
    ToppingMapper toppingMapper=new ToppingMapper(database);
    BottomMapper bottomMapper = new BottomMapper(database);

    public ShoppingcartCommand(String pageToShow) {
        super(pageToShow);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {
        int toppingId= Integer.parseInt(request.getParameter("toppingId"));
        int bottomId= Integer.parseInt(request.getParameter("bottomId"));
        String toppingName =toppingMapper.getAllToppings().get(toppingId).getName();
        String bottomName = bottomMapper.getAllTBottoms().get(bottomId).getName();


        int toppingPrice=Integer.parseInt(request.getParameter("toppingPrice"));
        int bottomPrice=Integer.parseInt(request.getParameter("bottomPrice"));
        int amount=Integer.parseInt(request.getParameter("amount"));
        int cupcakePrice= CupcakeUtil.calcCupcakePrice(toppingPrice,bottomPrice,amount);

        request.setAttribute("toppingName",toppingName);
        request.setAttribute("topingPrice",toppingPrice);
        request.setAttribute("toppingId",toppingId);
        request.setAttribute("bottomId",bottomId);
        request.setAttribute("bottomName",bottomName);
        request.setAttribute("bottomPrice",bottomPrice);
        request.setAttribute("amount",amount);
        request.setAttribute("cupcakePrice",cupcakePrice);



        return pageToShow;
    }
}
