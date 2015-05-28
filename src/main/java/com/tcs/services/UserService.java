package com.tcs.services;

import com.tcs.model.User;
import com.tcs.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by 864625 on 4/24/2015.
 */
@Service
@Transactional
public class UserService
{

    @Autowired
    private UserRepository userRepository;

    public List<User> findAll()
    {
        return userRepository.findAll();
    }

    public User create(User user)
    {
        return userRepository.save(user);
    }

    public User findUserById(Long id)
    {
        return userRepository.findOne(id);
    }

    public User update(User user)
    {
        return userRepository.save(user);
    }

    public void deleteUser(Long id)
    {
        userRepository.delete(id);
    }

    public User findUserByEmail(String email)
    {
        return userRepository.findUserByEmail(email);
    }
}
