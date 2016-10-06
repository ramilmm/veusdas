//package com.springapp.mvc.security;
//
//import common.Users;
//import services.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Component;
//
//@Component
//@Configuration
//@ComponentScan("mvc.services")
//public class MyUserDetailService implements UserDetailsService {
//
//    @Autowired
//    UserService userService;
//
//    @Override
//    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
//        Users userInfo = userService.getByLogin(login);
//        if (userInfo == null) throw new UsernameNotFoundException("User with name " + login + " not found");
//        return new MyUserDetail(userInfo);
//    }
//
//}