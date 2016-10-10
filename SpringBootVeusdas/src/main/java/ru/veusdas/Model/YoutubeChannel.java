//package ru.veusdas.Model;
//
//import javax.persistence.*;
//
//@Entity
//@Table(name = "youtubechannels")
//public class YoutubeChannel {
//
//    @Id
//    @Column(name = "id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;
//
//    @Column(name = "image",nullable = false)
//    private String image;
//
//    @Column(name = "name", nullable = false)
//    private String name;
//
//    @Column(name = "link", nullable = false)
//    private String link;
//
//    @Column(name = "price", nullable = false)
//    private String price;
//
//
//    public YoutubeChannel() {}
//
//    public YoutubeChannel(String image, String name, String link, String price) {
//        this.image = image;
//        this.name = name;
//        this.link = link;
//        this.price = price;
//    }
//
//    public String getImage() {
//        return image;
//    }
//
//    public void setImage(String image) {
//        this.image = image;
//    }
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public String getLink() {
//        return link;
//    }
//
//    public void setLink(String link) {
//        this.link = link;
//    }
//
//    public String getPrice() {
//        return price;
//    }
//
//    public void setPrice(String price) {
//        this.price = price;
//    }
//}
