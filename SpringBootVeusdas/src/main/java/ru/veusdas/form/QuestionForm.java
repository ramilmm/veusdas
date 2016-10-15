package ru.veusdas.form;


import javax.validation.constraints.NotNull;

public class QuestionForm {

    @NotNull
    private String name;

    @NotNull
    private String email;

    @NotNull
    private String message;


    public QuestionForm() {}

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
        return "QuestionForm{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
