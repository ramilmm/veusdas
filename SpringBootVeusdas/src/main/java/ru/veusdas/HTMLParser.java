package ru.veusdas;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.*;
import java.nio.charset.StandardCharsets;

/**
 * Created by ramilmmk on 28.10.16.
 */
public class HTMLParser {

    public static void main(String[] args) throws IOException {

//            writeFile("https://vk.com/maktubul");
//
//
//            getPublicData();


//            writeFile("https://www.instagram.com/instagramrussia/");

//            getInstData();

        writeFile("https://www.instagram.com/instagramrussia/");

        getInstData();

    }

    static public void writeFile(String url) throws IOException {
        File output = new File("/tmp/input.html");
        FileWriter fw = new FileWriter(output,false);
        Document pub = null;
        try {
            pub = Jsoup.connect(url).get();
        } catch (IOException e) {
            System.out.println("cannot connect to site");
        }

        fw.write(pub.outerHtml());
    }

    static public void getInstData() throws IOException {
        String photoLink = "";

        String instName = "username";
        String instPhoto = "og:image";

        String instNameParsed = "", instPhotoParsed = "";
        int count = 0;
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(
                        new FileInputStream("/tmp/input.html"), StandardCharsets.UTF_8))){
            String line;
            String buf;
            while ((line = reader.readLine()) != null) {
                if (line.contains(instName)) {
                    if (count != 0){
                        break;
                    }
                    count++;
                    buf = line.substring(line.indexOf(instName));
                    buf = buf.substring(buf.indexOf("=") + 1);
                    buf = buf.substring(0,buf.indexOf("\""));
//                    System.out.println(buf);
                    instNameParsed = buf;
                } else if (line.contains(instPhoto)) {
                    buf = line.substring(line.indexOf(instPhoto));
                    buf = buf.substring(buf.indexOf("=\"") + 2);
                    buf = buf.substring(0, buf.indexOf("\">"));
//                    System.out.println(buf);
                    instPhotoParsed = buf;
                }
                buf = "";
            }
        } catch (IOException e) {
            System.out.println("error");
        }
        File output = new File("/tmp/input.html");
        if (output.exists()) {
            output.delete();
            output.createNewFile();
        }
        System.out.println(instNameParsed);
        System.out.println(instPhotoParsed);
    }

    static public String getPublicData() throws IOException {
        String photoLink = "";

        String publicName = "op_header";
        String publicPhoto = "<a href=\"/photo";
        String publicSubscribes = "pm_counter";

        String publicNameParsed = "", publicPhotoParsed = "", publicSubscribesParserd = "";
        int count = 0;
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(
                        new FileInputStream("/tmp/input.html"), StandardCharsets.UTF_8))){
            String line;
            String buf;
            while ((line = reader.readLine()) != null) {
                if (line.contains(publicName)) {
                    buf = line.substring(line.indexOf(publicName));
                    buf = buf.substring(buf.indexOf(">") + 1);
                    buf = buf.substring(0,buf.indexOf("</h2>"));
                    System.out.println(buf);
                    publicNameParsed = buf;
                }else if (line.contains(publicPhoto)) {
                    buf = line.substring(line.indexOf("src=\""));
                    buf = buf.substring(buf.indexOf("\"") + 1);
                    buf = buf.substring(0,buf.indexOf("\""));
                    System.out.println(buf);
                    publicPhotoParsed = buf;
                }else if (line.contains(publicSubscribes)) {
                    if (count != 0){
                        break;
                    }
                    count++;
                    buf = line.substring(line.indexOf(publicSubscribes));
                    buf = buf.substring(buf.indexOf(">") + 1);
                    buf = buf.substring(0, buf.indexOf("</em>"));
                    buf = buf.replace("<span class=\"num_delim\"> </span>","");
                    System.out.println(buf);
                    publicSubscribesParserd = buf;
                }
                buf = "";
            }
        } catch (IOException e) {
            System.out.println("error");
        }
        File output = new File("/tmp/input.html");
        if (output.exists()) {
            output.delete();
            output.createNewFile();
        }
        return photoLink;
    }

}
