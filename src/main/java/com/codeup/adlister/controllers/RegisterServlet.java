package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //        Setting an attribute to notify through the web
        boolean invalid = Boolean.parseBoolean(request.getParameter("invalid"));
        request.setAttribute("invalid", invalid);
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        We're looking at the name attribute on the form. name="username", etc.
        String username = request.getParameter("username");
//        System.out.println(username);
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirm_password = request.getParameter("confirm_password");
        // TODO: ensure the submitted information is valid
        boolean invalidInputs = username.isEmpty() || email.isEmpty() || password.isEmpty() || !password.equals(confirm_password);
        if (invalidInputs) {
            response.sendRedirect("/register?invalid=true");
            return;
        }

        // TODO: create a new user based off of the submitted information
        User newuser = new User(username, email, password);
        System.out.println(newuser.getUsername());

        // TODO: if a user was successfully created, send them to the login page
        Users userDao = DaoFactory.getUsersDao();
        userDao.insert(newuser);
        response.sendRedirect("/login");


    }
}
