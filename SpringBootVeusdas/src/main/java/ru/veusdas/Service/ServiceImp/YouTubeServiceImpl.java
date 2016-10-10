//package ru.veusdas.Service.ServiceImp;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import ru.veusdas.Model.YoutubeChannel;
//import ru.veusdas.Model.YoutubeUtil;
//import ru.veusdas.Repository.YouTubeRepositoryCustom;
//import ru.veusdas.Service.YouTubeService;
//
//import java.util.ArrayList;
//import java.util.stream.Collectors;
//
//@Service
//public class YouTubeServiceImpl implements YouTubeService {
//
//    @Autowired
//    YouTubeRepositoryCustom repositoryCustom;
//
//    @Override
//    public void addChannel(YoutubeChannel channel) {
//        repositoryCustom.save(channel);
//    }
//
//    @Override
//    public void deleteChannelById(Long id) {
//        repositoryCustom.delete(repositoryCustom.findById(id));
//    }
//
//    @Override
//    public void deleteChannel(YoutubeChannel channel) {
//        repositoryCustom.delete(channel);
//    }
//
//    @Override
//    public YoutubeChannel getById(Long id) {
//        return repositoryCustom.findById(id);
//    }
//
//    @Override
//    public YoutubeChannel getByName(String name) {
//        return repositoryCustom.findByName(name);
//    }
//
//    @Override
//    public ArrayList<YoutubeChannel> getAll() {
//        return (ArrayList<YoutubeChannel>) repositoryCustom.findAll();
//    }
//
//    public ArrayList<YoutubeUtil> toList(ArrayList<YoutubeChannel> list){
//        return list.stream().map(y -> new YoutubeUtil(y.getId(), y.getName(), y.getImage(), y.getLink(), y.getPrice())).collect(Collectors.toCollection(ArrayList::new));
//    }
//
//    public String toText(YoutubeUtil util){
//        String result = "";
//        result+=util.getPrice() + ";";
//        return result;
//    }
//}
