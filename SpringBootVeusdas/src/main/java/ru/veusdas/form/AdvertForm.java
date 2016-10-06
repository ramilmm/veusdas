package ru.veusdas.form;


import javax.validation.constraints.NotNull;

public class AdvertForm {

    @NotNull
    private String link;
    @NotNull
    private String name;

    private String ava;
    @NotNull
    private String cost;
    @NotNull
    private String category;

    private String dopLink;

    private String message;

    public AdvertForm() {}

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAva() {
        return ava;
    }

    public void setAva(String ava) {
        this.ava = ava;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDopLink() {
        return dopLink;
    }

    public void setDopLink(String dopLink) {
        this.dopLink = dopLink;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "AdvertForm{" +
                "link='" + link + '\'' +
                ", name='" + name + '\'' +
                ", ava='" + ava + '\'' +
                ", cost='" + cost + '\'' +
                ", category=" + category +
                ", dopLink='" + dopLink + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
