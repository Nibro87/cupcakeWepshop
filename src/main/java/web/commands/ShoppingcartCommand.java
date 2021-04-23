package web.commands;

import business.entities.Bottom;
import business.entities.Cupcake;
import business.entities.Shoppingcart;
import business.entities.Topping;
import business.exceptions.UserException;
import business.persistence.BottomMapper;
import business.persistence.Database;
import business.persistence.ToppingMapper;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class ShoppingcartCommand extends CommandUnprotectedPage {
    private Database database;
    ToppingMapper toppingMapper=new ToppingMapper(database);
    BottomMapper bottomMapper = new BottomMapper(database);
    public List<Cupcake> cupcakes = new ArrayList();



    public ShoppingcartCommand(String pageToShow) {
        super(pageToShow);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException
    {
        int toppingId;
        int bottomId;
        int amount;
        try{
            toppingId= Integer.parseInt(request.getParameter("toppingId"));
            bottomId= Integer.parseInt(request.getParameter("bottomId"));
            amount = Integer.parseInt(request.getParameter("amount"));

        }catch(NumberFormatException ex){
            throw new UserException("Please choose amount");
        }

        List<Topping> toppingList=(List<Topping>)request.getServletContext().getAttribute("toppingsList");
        List<Bottom> bottomList=(List<Bottom>)request.getServletContext().getAttribute("bottomList");

        HttpSession session= request.getSession();
        Shoppingcart shoppingcart = (Shoppingcart) session.getAttribute("shoppingcart");

        if(shoppingcart==null){
            shoppingcart=new Shoppingcart();
        }

        Topping topping = getToppingFromId(toppingList,toppingId);

        Bottom bottom = getBottomFromId(bottomList,bottomId);
        Cupcake cupcake=new Cupcake(topping,bottom,amount);

        shoppingcart.addToCart(cupcake);

        session.setAttribute("Shoppingcart",shoppingcart);


        return pageToShow;
    }

    private Bottom getBottomFromId(List<Bottom> bottomList, int bottomId) {
        for(Bottom bottom:bottomList){
            if(bottom.getBottomId()==bottomId){
                return bottom;
            }
        }
        return null;
    }

    private Topping getToppingFromId(List<Topping> toppingList, int toppingId) {
        for(Topping topping : toppingList){
            if(topping.getToppingId()==toppingId){
                return topping;

            }
        }
        return null;
    }
}
