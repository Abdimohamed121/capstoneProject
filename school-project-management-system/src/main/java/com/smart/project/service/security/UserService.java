package com.smart.project.service.security;

import com.smart.project.model.security.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}