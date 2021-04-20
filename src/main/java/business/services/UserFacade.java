package business.services;

import business.entities.Bottom;
import business.entities.Topping;
import business.entities.User;

import business.persistence.BottomMapper;
import business.persistence.Database;
import business.persistence.ToppingMapper;
import business.persistence.UserMapper;
import business.exceptions.UserException;

import java.util.List;

public class UserFacade
{
    UserMapper userMapper;
    ToppingMapper toppingMapper;
    BottomMapper bottomMapper;

    public UserFacade(Database database)
    {
        userMapper = new UserMapper(database);
    }

    public User login(String email, String password) throws UserException
    {
        return userMapper.login(email, password);
    }

    public User createUser(String email, String password) throws UserException
    {
        User user = new User(email, password, "customer");
        userMapper.createUser(user);
        return user;
    }

    public List<Topping> getAllToppings() throws UserException{
        return toppingMapper.getAllToppings();

    }

    public List<Bottom> getAllBottom() throws UserException{
        return bottomMapper.getAllTBottoms();

    }


}
