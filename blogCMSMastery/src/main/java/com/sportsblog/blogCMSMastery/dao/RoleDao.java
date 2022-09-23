package com.sportsblog.blogCMSMastery.dao;

import java.util.List;

import com.sportsblog.blogCMSMastery.dto.Role;

public interface RoleDao {
    public Role createRole (Role role);
    public List<Role> readAllRoles ();
    public Role readRoleById (int id);
    public void updateRole (Role role);
    public void deleteRole (int id);
}