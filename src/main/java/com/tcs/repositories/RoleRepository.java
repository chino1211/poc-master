package com.tcs.repositories;

import com.tcs.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.io.Serializable;

/**
 * Created by 864625 on 4/24/2015.
 */
public interface RoleRepository extends JpaRepository<Role, Serializable>
{
}
