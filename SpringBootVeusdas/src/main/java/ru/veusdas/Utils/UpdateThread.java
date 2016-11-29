package ru.veusdas.Utils;

import ru.veusdas.Model.Spisok;
import ru.veusdas.Service.ServiceImp.SpisokServiceImpl;

import javax.xml.crypto.Data;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by ramil on 29.11.2016.
 */
public class UpdateThread implements Runnable {

    SpisokServiceImpl spisokService;

    ArrayList<Spisok> spisok;

    final Long WEEK = 604800000L;

    public UpdateThread(SpisokServiceImpl spisokService, ArrayList<Spisok> spisok) {
        this.spisokService = spisokService;
        this.spisok = spisok;
    }

    public void run() {
        for (Spisok pub : spisok) {
            try {
                HTMLParser.writeFile(pub.getLink());
                pub.setSubscribes(HTMLParser.updateSubscribes());
                pub.setUpdate_date(new Date(new Date().getTime() + 2*WEEK));
            } catch (IOException e) {
                e.printStackTrace();
            }
            spisokService.update(pub);
        }
    }

}
