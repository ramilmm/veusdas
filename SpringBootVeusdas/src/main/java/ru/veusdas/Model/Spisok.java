package ru.veusdas.Model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "spisok")
public class Spisok {


    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "publiclist_id_seq")
    @SequenceGenerator(name = "publiclist_id_seq", sequenceName = "publiclist_id_seq", allocationSize = 1)
    @Column(name = "id")
    private Long id;

    @Column(name = "name",nullable = false)
    private String name;

    @Column(name = "link",nullable = false)
    private String link;

    @Column(name = "onTop", nullable = false)
    private boolean onTop;

    @Column(name = "topStart")
    private Date topStart;

    @Column(name = "topEnd")
    private Date topEnd;

    @Column(name = "subscribes",nullable = false)
    private String subscribes;

    @Column(name = "avatar_link")
    private String avatar_link;

    @Column(name = "stat_link",nullable = false)
    private String stat_link;

    @Column(name = "admin_link",nullable = false)
    private String admin_link;

    @Column(name = "cost",nullable = false)
    private Long cost;

    @Column(name = "public_category")
    private int public_category;

    @Column(name = "active")
    private boolean active;

    public Spisok() {}

    public Spisok(String name, String link, String subscribes, String avatar_link, Boolean onTop, Date topStart, Date topEnd, String stat_link, String admin_link, Long cost, int public_category, boolean active) {
        this.name = name;
        this.link = link;
        this.subscribes = subscribes;
        this.avatar_link = avatar_link;
        this.stat_link = stat_link;
        this.onTop = onTop;
        this.topStart = topStart;
        this.topEnd = topEnd;
        this.admin_link = admin_link;
        this.cost = cost;
        this.public_category = public_category;
        this.active = active;
    }

    public String getSubscribes() {
        return subscribes;
    }

    public void setSubscribes(String subscribes) {
        this.subscribes = subscribes;
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

    public String getAvatar_link() {
        return avatar_link;
    }

    public void setAvatar_link(String avatar_link) {
        this.avatar_link = avatar_link;
    }

    public String getStat_link() {
        return stat_link;
    }

    public void setStat_link(String stat_link) {
        this.stat_link = stat_link;
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

    public int getPublic_category() {
        return public_category;
    }

    public void setPublic_category(int public_category) {
        this.public_category = public_category;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public boolean isOnTop() {
        return onTop;
    }

    public void setOnTop(boolean onTop) {
        this.onTop = onTop;
    }

    public Date getTopStart() {
        return topStart;
    }

    public void setTopStart(Date topStart) {
        this.topStart = topStart;
    }

    public Date getTopEnd() {
        return topEnd;
    }

    public void setTopEnd(Date topEnd) {
        this.topEnd = topEnd;
    }

    @Override
    public String toString() {
        return "Spisok{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", link='" + link + '\'' +
                ", onTop=" + onTop +
                ", topStart=" + topStart +
                ", topEnd=" + topEnd +
                ", subscribes='" + subscribes + '\'' +
                ", avatar_link='" + avatar_link + '\'' +
                ", stat_link='" + stat_link + '\'' +
                ", admin_link='" + admin_link + '\'' +
                ", cost=" + cost +
                ", public_category=" + public_category +
                ", active=" + active +
                '}';
    }
}
