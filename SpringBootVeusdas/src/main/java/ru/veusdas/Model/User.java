package ru.veusdas.Model;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "username",nullable = false)
    private String username;
    @Column(name = "password",nullable = false)
    private String password;
    @Column(name = "ROLE",nullable = false)
    private String role;

    @Column(name = "vk")
    private String vk;

    @Column(name = "requisites")
    private String requisites;

    @Column(name = "account")
    private Integer account;

    @Column(name = "referal")
    private Long referal;

    public User() {}

    public User(String username, String password, String role, String vk, String requisites, Integer account, Long referal) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.vk = vk;
        this.requisites = requisites;
        this.account = account;
        this.referal = referal;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getVk() {
        return vk;
    }

    public void setVk(String vk) {
        this.vk = vk;
    }

    public String getRequisites() {
        return requisites;
    }

    public void setRequisites(String requisites) {
        this.requisites = requisites;
    }

    public Integer getAccount() {
        return account;
    }

    public void setAccount(Integer account) {
        this.account = account;
    }

    public Long getReferal() {
        return referal;
    }

    public void setReferal(Long referal) {
        this.referal = referal;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                ", vk='" + vk + '\'' +
                ", requisites='" + requisites + '\'' +
                ", account=" + account +
                ", referal=" + referal +
                '}';
    }
}
