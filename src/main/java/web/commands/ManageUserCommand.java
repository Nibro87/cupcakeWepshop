package web.commands;

import business.exceptions.UserException;
import business.persistence.UserMapper;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManageUserCommand extends CommandProtectedPage {

    UserFacade userFacade;
    UserMapper userMapper;


    public ManageUserCommand(String pageToShow, String role) {
        super(pageToShow, role);
        this.userFacade = new UserFacade(database);
    }




    @Override
    public java.lang.String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {

        String deleteId = request.getParameter("delete");

        if (deleteId != null){

            int rowsAffected = userFacade.deleteUser(Integer.parseInt(deleteId));

            if(rowsAffected >0){
              request.getServletContext().setAttribute("userList",userMapper.getAllUsers());
            }
        }else {

            request.setAttribute("error","Brugeren kunne ikke fjernes");
        }








        return pageToShow;
    }
}