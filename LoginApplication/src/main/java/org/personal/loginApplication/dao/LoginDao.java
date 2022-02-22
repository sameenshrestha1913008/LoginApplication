package org.personal.loginApplication.dao;

import org.personal.loginApplication.model.Login;

import java.sql.SQLException;

public interface LoginDao {
    Login findOne(Login login);
}
