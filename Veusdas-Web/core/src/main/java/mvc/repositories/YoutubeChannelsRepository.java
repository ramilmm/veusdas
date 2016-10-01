package mvc.repositories;


import mvc.common.YoutubeChannels;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

public interface YoutubeChannelsRepository extends JpaRepository<YoutubeChannels,Long>{

    YoutubeChannels findById(long id);

    ArrayList<YoutubeChannels> findByActive(boolean active);


}
