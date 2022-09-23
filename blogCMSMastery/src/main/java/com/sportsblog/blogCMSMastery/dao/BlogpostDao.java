package com.sportsblog.blogCMSMastery.dao;

import java.util.List;

import com.sportsblog.blogCMSMastery.dto.Blogpost;
import com.sportsblog.blogCMSMastery.dto.Hashtag;
import com.sportsblog.blogCMSMastery.dto.User;

public interface BlogpostDao {
    public Blogpost createBlogpost (Blogpost blogpost);
    public List<Blogpost> readAllBlogposts ();
    public Blogpost readBlogpostById (int id);
    public void updateBlogpost (Blogpost blogpost);
    public void deleteBlogpost (int id);

    User getUserForBlogpost(int blogpostId);

    List<Hashtag> getTagsForBlogpost(int blogpostId);

    List<Blogpost> getBlogpostByType(String type);

    List<Blogpost> getBlogpostByTag(int tagId);

    List<Blogpost> getBlogpostBySearchTitle(String searchText);
}