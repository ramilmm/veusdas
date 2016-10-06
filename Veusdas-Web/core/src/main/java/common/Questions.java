//package common;
//
//import javax.persistence.*;
//
//@Entity
//@Table(name = "questions")
//public class Questions {
//
//    @Id
//    @Column(name = "id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;
//
//    @Column(name = "name", nullable = false)
//    private String name;
//
//    @Column(name = "email", nullable = false)
//    private String email;
//
//    @Column(name = "question", nullable = false)
//    private String question;
//
//    @Column(name = "active")
//    private boolean active;
//
//    public Questions() {}
//
//    public Questions(String name, String email, String question, boolean active){
//        this.name = name;
//        this.email = email;
//        this.question = question;
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
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public String getQuestion() {
//        return question;
//    }
//
//    public void setQuestion(String question) {
//        this.question = question;
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
//        return "Questions{" +
//                "id=" + id +
//                ", name='" + name + '\'' +
//                ", email='" + email + '\'' +
//                ", question='" + question + '\'' +
//                ", active=" + active +
//                '}';
//    }
//}
