//package common;
//
//import javax.persistence.*;
//
//@Entity
//@Table(name = "youtubechannels")
//public class YoutubeChannels {
//
//    @Id
//    @Column(name = "id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;
//
//    @Column(name = "name", nullable = false)
//    private String name;
//
//    @Column(name = "youtube_link", nullable = false)
//    private String youtube_link;
//
//    @Column(name = "description", nullable = false)
//    private String description;
//
//    @Column(name = "active")
//    private boolean active;
//
//    public YoutubeChannels() {}
//
//    public YoutubeChannels(String name, String youtube_link, String description, boolean active){
//        this.name = name;
//        this.youtube_link = youtube_link;
//        this.description = description;
//        this.active = active;
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
//    public String getYoutube_link() {
//        return youtube_link;
//    }
//
//    public void setYoutube_link(String youtube_link) {
//        this.youtube_link = youtube_link;
//    }
//
//    public String getDescription() {
//        return description;
//    }
//
//    public void setDescription(String description) {
//        this.description = description;
//    }
//
//    public boolean isActive() {
//        return active;
//    }
//
//    public void setActive(boolean active) {
//        this.active = active;
//    }
//
//    @Override
//    public String toString() {
//        return "YoutubeChannels{" +
//                "id=" + id +
//                ", name='" + name + '\'' +
//                ", youtube_link='" + youtube_link + '\'' +
//                ", description='" + description + '\'' +
//                ", active=" + active +
//                '}';
//    }
//}
