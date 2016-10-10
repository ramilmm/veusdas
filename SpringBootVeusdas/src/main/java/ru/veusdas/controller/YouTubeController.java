//package ru.veusdas.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import ru.veusdas.Model.YoutubeChannel;
//import ru.veusdas.Model.YoutubeUtil;
//import ru.veusdas.Service.ServiceImp.YouTubeServiceImpl;
//
//import java.util.ArrayList;
//
//@Controller
//public class YouTubeController {
//
//    @Autowired
//    YouTubeServiceImpl service;
//
//
//    @GetMapping("/youtube")
//    public String renderPage(Model model){
//
//        ArrayList<YoutubeChannel> list = service.getAll();
//        ArrayList<YoutubeUtil> channels = service.toList(list);
//        model.addAttribute("channels",channels);
//
//        return "youtube/index";
//    }
//
//}
