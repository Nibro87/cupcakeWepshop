package web;

import business.entities.Cupcake;
import business.exceptions.UserException;
import business.persistence.BottomMapper;
import business.persistence.Database;
import business.persistence.ToppingMapper;
import business.persistence.UserMapper;
import business.services.CopcakeFacade;
import web.commands.*;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FrontController", urlPatterns = {"/fc/*"})
public class FrontController extends HttpServlet
{
    private final static String USER = "root";
    private final static String PASSWORD = "1234" +
            "";
    private final static String URL = "jdbc:mysql://localhost:3306/cupcake?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    public static Database database;


    public void init() throws ServletException
    {
        // Initialize database connection
        if (database == null)
        {
            try
            {
                database = new Database(USER, PASSWORD, URL);
            }
            catch (ClassNotFoundException ex)
            {
                Logger.getLogger("web").log(Level.SEVERE, ex.getMessage(), ex);
            }
        }

        // Initialize whatever global datastructures needed here:
        CopcakeFacade copcakeFacade = new CopcakeFacade();
        UserMapper userMapper = new UserMapper(database);
        try {
            getServletContext().setAttribute("userList", userMapper.getAllUsers());
        } catch (UserException e) {
            e.printStackTrace();
        }




        ToppingMapper toppingMapper = new ToppingMapper(database);
        try {
            getServletContext().setAttribute("toppingsList", toppingMapper.getAllToppings());
        } catch (UserException e) {
            e.printStackTrace();
        }


        BottomMapper bottomMapper = new BottomMapper(database);
        try {
            getServletContext().setAttribute("bottomList", bottomMapper.getAllTBottoms());
        } catch (UserException e) {
            e.printStackTrace();
        }
    }



    protected void processRequest(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException
    {
        try
        {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            Command action = Command.fromPath(request, database);

            if (action instanceof CommandUnknown) {
                response.sendError(404);
                return;
            }

            String view = action.execute(request, response);

            if (view.startsWith(Command.REDIRECT_INDICATOR)) {
                String page = view.substring(Command.REDIRECT_INDICATOR.length());
                response.sendRedirect(page);
                return;
            }

            request.getRequestDispatcher("/WEB-INF/" + view + ".jsp").forward(request, response);
        }
        catch (UnsupportedEncodingException | UserException ex)
        {
            request.setAttribute("problem", ex.getMessage());
            Logger.getLogger("web").log(Level.SEVERE, ex.getMessage(), ex);
            request.getRequestDispatcher("/errorpage.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo()
    {
        return "FrontController for application";
    }

}
