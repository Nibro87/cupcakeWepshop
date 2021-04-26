package web.commands;

import business.exceptions.UserException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PayCommand extends CommandProtectedPage {
    public PayCommand(String pageToShow, String role) {
        super(pageToShow, role);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        int balance = 0;
        int totalPrice = 0;
        int newBalance = 0;

        HttpSession session= request.getSession();
        

        return pageToShow;
    }
}
