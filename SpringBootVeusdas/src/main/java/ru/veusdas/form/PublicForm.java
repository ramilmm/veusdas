package ru.veusdas.form;


import javax.validation.constraints.NotNull;

public class PublicForm {


    private String name;

    @NotNull
    private String link;

    @NotNull
    private String subscribes;

    @NotNull
    private String pub;

    @NotNull
    private String ava;

    @NotNull
    private Long cost;

    @NotNull
    private int category;

    @NotNull
    private String stat;


    public PublicForm(){}


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

    public String getAva() {
        return ava;
    }

    public void setAva(String ava) {
        this.ava = ava;
    }

    public Long getCost() {
        return cost;
    }

    public void setCost(Long cost) {
        this.cost = cost;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public String getStat() {
        return stat;
    }

    public void setStat(String stat) {
        this.stat = stat;
    }


    public String getPub() {
        return pub;
    }

    public void setPub(String pub) {
        this.pub = pub;
    }

    public String getSubscribes() {
        return subscribes;
    }

    public void setSubscribes(String subscribes) {
        this.subscribes = subscribes;
    }

    @Override
    public String toString() {
        return "PublicForm{" +
                "name='" + name + '\'' +
                ", link='" + link + '\'' +
                ", subscribes='" + subscribes + '\'' +
                ", pub='" + pub + '\'' +
                ", ava='" + ava + '\'' +
                ", cost=" + cost +
                ", category=" + category +
                ", stat='" + stat + '\'' +
                '}';
    }
}
