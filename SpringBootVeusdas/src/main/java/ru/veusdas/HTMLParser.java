package ru.veusdas;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/**
 * Created by ramilmmk on 28.10.16.
 */
public class HTMLParser {
//    public static void main(String[] args) throws IOException {
//        writeFile("https://vk.com/kalembaa");
//        getPublicData();
//    }

    static public void writeFile(String url) throws IOException {
        File output = new File("input.html");
        FileWriter fw = new FileWriter(output,false);
        Document pub = null;
        String url_modified = "";
        if (!url.contains("http")) {
            url_modified = "http://" + url;
        }else url_modified = url;
        try {
            pub = Jsoup.connect(url_modified).get();
        } catch (IOException e) {
            System.out.println("cannot connect to site");
        }

        fw.write(pub.outerHtml());
    }

    static public ArrayList<String> getInstData() throws IOException {
        String photoLink = "";

        String instName = "username";
        String instPhoto = "og:image";

        String instNameParsed = "", instPhotoParsed = "";
        int count = 0;
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(
                        new FileInputStream("input.html"), StandardCharsets.UTF_8))){
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
                    instNameParsed = buf;
                } else if (line.contains(instPhoto)) {
                    buf = line.substring(line.indexOf(instPhoto));
                    buf = buf.substring(buf.indexOf("=\"") + 2);
                    buf = buf.substring(0, buf.indexOf("\">"));
                    instPhotoParsed = buf;
                }
                buf = "";
            }
        } catch (IOException e) {
            System.out.println("error");
        }
        File output = new File("input.html");
        if (output.exists()) {
            output.delete();
            output.createNewFile();
        }

        ArrayList<String> res = new ArrayList<>();
        res.add(instNameParsed);
        res.add(instPhotoParsed);
        return res;
    }

    static public ArrayList<String> getPublicData() throws IOException {
        ArrayList<String> outputList = new ArrayList<>();

        String publicName = "op_header";
        String publicPhoto = "<a href=\"/photo";
        String publicSubscribes = "pm_counter";
        String publicId = "name=\"post-";

        String publicNameParsed = "", publicPhotoParsed = "", publicSubscribesParserd = "", publicStatParsed = "";
        int count = 0;
        int countId = 0;
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(
                        new FileInputStream("input.html"), StandardCharsets.UTF_8))){
            String line;
            String buf;
            while ((line = reader.readLine()) != null) {
                if (line.contains(publicId)) {
                    if (countId != 0){
                        if (count != 0){
                            break;
                        }
                        continue;
                    }
                    countId++;
                    buf = line.substring(line.indexOf(publicId));
                    buf = buf.substring(buf.indexOf(publicId) + 11);
                    buf = buf.substring(0,buf.indexOf("_"));
                    System.out.println("https://vk.com/stats?act=reach&gid=" + buf);
                    publicStatParsed = "https://vk.com/stats?act=reach&gid=" + buf;
                }else if (line.contains(publicName)) {
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
                        if (countId != 0){
                            break;
                        }
                        continue;
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
//        File output = new File("input.html");
//        if (output.exists()) {
//            output.delete();
//            output.createNewFile();
//        }
        outputList.add(publicNameParsed);
        outputList.add(publicPhotoParsed);
        outputList.add(publicSubscribesParserd);
        outputList.add(publicStatParsed);

        return outputList;
    }

}
