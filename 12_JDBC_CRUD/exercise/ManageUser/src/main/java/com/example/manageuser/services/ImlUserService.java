package com.example.manageuser.services;

import com.example.manageuser.model.User;
import com.example.manageuser.repository.ImlUserRepository;

import java.sql.SQLException;
import java.util.List;

public class ImlUserService implements IUserService {
    private final ImlUserRepository imlUserRepositories = new ImlUserRepository();

    @Override
    public void insertUser(User user) throws SQLException {
        imlUserRepositories.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return imlUserRepositories.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return imlUserRepositories.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return imlUserRepositories.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return imlUserRepositories.updateUser(user);
    }

    @Override
    public List<User> searchUser(String country) {
        return imlUserRepositories.searchUser(country);
    }

    @Override
    public List<User> sortName() {
        return imlUserRepositories.sortName();
    }
}
