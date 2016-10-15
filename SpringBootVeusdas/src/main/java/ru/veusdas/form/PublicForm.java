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
        String buf = name;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.name = buf;
    }

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
        String buf = stat;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.stat = buf;
    }


    public String getPub() {
        return pub;
    }

    public void setPub(String pub) {
        String buf = pub;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.pub = buf;
    }

    public String getSubscribes() {
        return subscribes;
    }

    public void setSubscribes(String subscribes) {
        String buf = subscribes;
        if (buf.contains("<") && buf.contains(">")){
            buf = buf.replace("<", "&lt");
            buf = buf.replace(">", "&gt");
        }

        this.subscribes = buf;
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
