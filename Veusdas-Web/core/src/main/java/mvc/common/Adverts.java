package mvc.common;

import javax.persistence.*;

@Entity
@Table(name="adverts")
public class Adverts {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "profile_link",nullable = false)
    private String profile_link;

    @Column(name = "advert_name", length = 100,nullable = false)
    private String advert_name;

    @Column(name = "avatar_link")
    private String avatar_link;

    @Column(name = "cost",nullable = false)
    private Long cost;

    @Column(name = "advert_type",nullable = false)
    private String advert_type;

    @Column(name = "public_link",nullable = false)
    private String public_link;

    @Column(name = "comment",length = 200,nullable = false)
    private String comment;

    @Column(name = "active")
    private boolean active;

    public Adverts() {}

    public Adverts(String profile_link, String advert_name, String avatar_link, Long cost, String advert_type, String public_link, String comment, boolean active){
        this.profile_link = profile_link;
        this.advert_name = advert_name;
        this.avatar_link = avatar_link;
        this.cost = cost;
        this.advert_type = advert_type;
        this.public_link = public_link;
        this.comment = comment;
        this.active = active;
    }

    public Adverts(String profile_link, String advert_name, Long cost, String advert_type, String public_link, String comment, boolean active){
        this.profile_link = profile_link;
        this.advert_name = advert_name;
        this.cost = cost;
        this.advert_type = advert_type;
        this.public_link = public_link;
        this.comment = comment;
        this.active = active;
    }

    public Adverts(String profile_link, String advert_name, Long cost, String advert_type, String comment, boolean active) {
        this.profile_link = profile_link;
        this.advert_name = advert_name;
        this.cost = cost;
        this.advert_type = advert_type;
        this.comment = comment;
        this.active = active;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProfile_link() {
        return profile_link;
    }

    public void setProfile_link(String profile_link) {
        this.profile_link = profile_link;
    }

    public String getAdvert_name() {
        return advert_name;
    }

    public void setAdvert_name(String advert_name) {
        this.advert_name = advert_name;
    }

    public String getAvatar_link() {
        return avatar_link;
    }

    public void setAvatar_link(String avatar_link) {
        this.avatar_link = avatar_link;
    }

    public Long getCost() {
        return cost;
    }

    public void setCost(Long cost) {
        this.cost = cost;
    }

    public String getAdvert_type() {
        return advert_type;
    }

    public void setAdvert_type(String advert_type) {
        this.advert_type = advert_type;
    }

    public String getPublic_link() {
        return public_link;
    }

    public void setPublic_link(String public_link) {
        this.public_link = public_link;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "Adverts{" +
                "id=" + id +
                ", profile_link='" + profile_link + '\'' +
                ", advert_name='" + advert_name + '\'' +
                ", avatar_link='" + avatar_link + '\'' +
                ", cost=" + cost +
                ", advert_type='" + advert_type + '\'' +
                ", public_link='" + public_link + '\'' +
                ", comment='" + comment + '\'' +
                ", active=" + active +
                '}';
    }
}
