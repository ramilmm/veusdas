package ru.veusdas.Model;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {
    private Long id;

    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name = "ROLE")
    private String role;

    @Column(name = "vk")
    private String vk;

    @Column(name = "requisites")
    private String requisites;

    @Column(name = "account")
    private Integer account;

    @Column(name = "referal")
    private Long referal;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
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

    public void setReferal(Long referal_by) {
        this.referal = referal_by;
    }
}