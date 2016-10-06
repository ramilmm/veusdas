//package services;
//
//import common.YoutubeChannels;
//import repositories.YoutubeChannelsRepositoryCustom;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.ArrayList;
//
//@Service
//public class YoutubeChannelService {
//
//    @Autowired
//    private YoutubeChannelsRepositoryCustom yotubeRepository;
//
//    @Transactional
//    public void addYoutubeChannel(YoutubeChannels youtubeChannels){
//        yotubeRepository.saveAndFlush(youtubeChannels);
//    }
//
//    @Transactional
//    public void deleteYoutubeChannel(YoutubeChannels youtubeChannels){
//        yotubeRepository.delete(youtubeChannels);
//    }
//
//    @Transactional
//    public void deleteYoutobeChannelById(Long id){
//        yotubeRepository.delete(yotubeRepository.findById(id));
//    }
//
//    @Transactional
//    public void update(YoutubeChannels youtubeChannels){
//        yotubeRepository.saveAndFlush(youtubeChannels);
//    }
//
//    public ArrayList<YoutubeChannels> getActiveChannels(){
//        return yotubeRepository.findByActive(true);
//    }
//
//    public ArrayList<YoutubeChannels> getNonActiveChannels(){
//        return yotubeRepository.findByActive(false);
//    }
//    public YoutubeChannels getById(Long id){
//        return yotubeRepository.findById(id);
//    }
//}
