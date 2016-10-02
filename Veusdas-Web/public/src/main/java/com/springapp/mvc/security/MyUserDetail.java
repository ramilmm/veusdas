package com.springapp.mvc.security;

import mvc.common.Users;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class MyUserDetail implements UserDetails {

    /**
     * запись о пользователе из БД
     */
    private Users users;

    public MyUserDetail(Users userInfo) {
        this.users = userInfo;
    }

    /**
     * @return коллекция прав доступа пользователя
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
        grantedAuthorities.add(new SimpleGrantedAuthority(users.getRole()));
        return grantedAuthorities;
    }

    /**
     * hash пароля пользователя
     */
    @Override
    public String getPassword() {
        return users.getHash_pass();
    }

    /**
     * Логин (имя) пользователя
     */
    @Override
    public String getUsername() {
        return users.getLogin();
    }

    public String getName() { return users.getName(); }

    public String getRole() { return  users.getRole(); }
    /**
     * @return флаг, что срок действия аккаунта еще не истек, он активен
     */
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    /**
     * @return флаг, что пользователь не заблокирован администраторами сайта
     */
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    /**
     * @return флаг, что срок действия пароля еще не истек, он активен
     */
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    /**
     * @return флаг, что пользователь включен и подтвержден
     */
    @Override
    public boolean isEnabled() {
        return users.getActive();
    }

    public Users getUserInfo() {
        return users;
    }

    public void setUserInfo(Users userInfo) {
        this.users = userInfo;
    }
}