package ru.veusdas.MailSender;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Sender {

    private String username;
    private String password;
    private Properties props;


    /**
     * Конструктор с настройками проперти для отправки писем на почту
     * Используется хост - gmail.com
     */
    public Sender(String username, String password) {
        this.username = username;
        this.password = password;

        props = new Properties();
        props.put("mail.smtp.host", "smtp.mail.ru");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
    }

    /**
     * @param subject - Тема письма
     * @param text - Содержание письма
     * @param fromEmail - email, с которого отправляется письмо
     * @param toEmail - email назначения
     */
    public void send(String subject, String text, String fromEmail, String toEmail){
        Session session = Session.getDefaultInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            //от кого
            message.setFrom(new InternetAddress(username));
            //кому
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            //тема сообщения
            message.setSubject(subject);
            //текст
            message.setText(text);

            //отправляем сообщение
            Transport.send(message);
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}
