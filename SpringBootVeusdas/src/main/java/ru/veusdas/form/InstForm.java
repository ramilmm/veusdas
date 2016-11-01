package ru.veusdas.form;

import javax.validation.constraints.NotNull;

/**
 * Created by ramilmmk on 01.11.16.
 */
public class InstForm {


    @NotNull
    private String link;

    @NotNull
    private String subscribes;

    @NotNull
    private String pub;

    @NotNull
    private Long cost;

    public InstForm() {}

    public InstForm(String link, String subscribes, String pub, Long cost) {
        this.link = link;
        this.subscribes = subscribes;
        this.pub = pub;
        this.cost = cost;
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

    @Override
    public String toString() {
        return "InstForm{" +
                "link='" + link + '\'' +
                ", subscribes='" + subscribes + '\'' +
                ", pub='" + pub + '\'' +
                ", cost=" + cost +
                '}';
    }
}
