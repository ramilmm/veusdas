package ru.veusdas.Model;


public class YoutubeUtil {

    private Long id;

    private String name;

    private String image;

    private String link;

    private String price;

    public YoutubeUtil() {}

    public YoutubeUtil(Long id, String name, String image, String link, String price) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.link = link;
        this.price = price;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
