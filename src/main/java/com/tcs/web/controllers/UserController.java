package com.tcs.web.controllers;

import com.tcs.model.User;
import com.tcs.services.UserService;
import com.tcs.web.configuration.SecurityUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;

/**
 * Created by 864625 on 4/24/2015.
 */
@Controller
public class UserController
{
    private static UserService userService;

    @Autowired
    public void setUserService(UserService userService)
    {
        UserController.userService = userService;
    }

    public static User getCurrentUser()
    {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails)
        {
            String email = ((UserDetails) principal).getUsername();
            User loginUser = userService.findUserByEmail(email);
            return new SecurityUser(loginUser);
        }

        return null;
    }
}
