package com.tcs.repositories;

import com.tcs.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.io.Serializable;

/**
 * Created by 864625 on 4/24/2015.
 */
public interface UserRepository extends JpaRepository<User, Serializable>
{
    User findUserByEmail(String email);
}
