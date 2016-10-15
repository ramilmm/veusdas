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
        String buf = link;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.link = buf;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        String buf = name;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.name = buf;
    }

    public String getAva() {
        return ava;
    }

    public void setAva(String ava) {

        String buf = ava;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.ava = buf;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        String buf = cost;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.cost = buf;
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
        String buf = dopLink;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.dopLink = buf;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        String buf = message;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.message = buf;
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
