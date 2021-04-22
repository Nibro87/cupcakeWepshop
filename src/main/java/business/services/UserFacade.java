package business.services;

import business.entities.User;
import business.persistence.Database;
import business.persistence.UserMapper;
import business.exceptions.UserException;

import java.util.List;

public class UserFacade
{
    UserMapper userMapper;


    public UserFacade(Database database)
    {
        userMapper = new UserMapper(database);
    }

    public User login(String email, String password) throws UserException
    {
        return userMapper.login(email, password);
    }

    public User createUser(String email, String password, int saldo) throws UserException
    {

        User user = new User(email, password, "customer",saldo);
        userMapper.createUser(user);
        return user;
    }

    public int deleteUser(int id) throws UserException {

        return userMapper.deleteUser(id);
    }

    public List<User> getAllUsers() {

        return null;
    }


    public int updateBalance(int id,int saldo) throws UserException {
        return userMapper.updateBalance(id,saldo);
    }
}
