package ru.veusdas.form;


import javax.validation.constraints.NotNull;

public class PublicForm {


//    private String name;

    @NotNull
    private String link;

//    @NotNull
//    private String subscribes;

    @NotNull
    private String pub;

//    @NotNull
//    private String ava;

    @NotNull
    private Long cost;

    @NotNull
    private int category;

//    @NotNull
//    private String stat;


    public PublicForm(){}


    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getPub() {
        return pub;
    }

    public void setPub(String pub) {
        this.pub = pub;
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

    @Override
    public String toString() {
        return "PublicForm{" +
                "link='" + link + '\'' +
                ", pub='" + pub + '\'' +
                ", cost=" + cost +
                ", category=" + category +
                '}';
    }
}
