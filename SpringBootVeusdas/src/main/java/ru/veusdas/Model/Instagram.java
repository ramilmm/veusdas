package ru.veusdas.Model;

import javax.persistence.*;

@Entity
@Table(name = "instagram")
public class Instagram {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "publiclist_id_seq")
    @SequenceGenerator(name = "publiclist_id_seq", sequenceName = "publiclist_id_seq", allocationSize = 1)
    @Column(name = "id")
    private Long id;


    @Column(name = "name",nullable = false)
    private String name;

    @Column(name = "link",nullable = false)
    private String link;

    @Column(name = "subscribes",nullable = false)
    private String subscribes;

    @Column(name = "avatar_link")
    private String avatar_link;

    @Column(name = "admin_link",nullable = false)
    private String admin_link;

    @Column(name = "cost",nullable = false)
    private Long cost;

    @Column(name = "active")
    private boolean active;

    public Instagram() {}

    public Instagram(String name, String link, String subscribes, String avatar_link, String admin_link, Long cost, boolean active) {
        this.name = name;
        this.link = link;
        this.subscribes = subscribes;
        this.avatar_link = avatar_link;
        this.admin_link = admin_link;
        this.cost = cost;
        this.active = active;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getSubscribes() {
        return subscribes;
    }

    public void setSubscribes(String subscribes) {
        this.subscribes = subscribes;
    }

    public String getAvatar_link() {
        return avatar_link;
    }

    public void setAvatar_link(String avatar_link) {
        this.avatar_link = avatar_link;
    }

    public String getAdmin_link() {
        return admin_link;
    }

    public void setAdmin_link(String admin_link) {
        this.admin_link = admin_link;
    }

    public Long getCost() {
        return cost;
    }

    public void setCost(Long cost) {
        this.cost = cost;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "Instagram{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", link='" + link + '\'' +
                ", subscribes='" + subscribes + '\'' +
                ", avatar_link='" + avatar_link + '\'' +
                ", admin_link='" + admin_link + '\'' +
                ", cost=" + cost +
                ", active=" + active +
                '}';
    }
}
