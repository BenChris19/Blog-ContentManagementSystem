package com.sportsblog.blogCMSMastery.controller;

import com.sportsblog.blogCMSMastery.dao.BlogpostDao;
import com.sportsblog.blogCMSMastery.dao.CommentDao;
import com.sportsblog.blogCMSMastery.dao.HashtagDao;
import com.sportsblog.blogCMSMastery.dao.RoleDao;
import com.sportsblog.blogCMSMastery.dao.UserDao;
import com.sportsblog.blogCMSMastery.dto.Blogpost;
import com.sportsblog.blogCMSMastery.dto.Hashtag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    RoleDao roleDao;

    @Autowired
    UserDao userDao;

    @Autowired
    BlogpostDao blogpostDao;

    @Autowired
    HashtagDao hashtagDao;

    @Autowired
    CommentDao commentDao;

    @GetMapping({"/", "/home"})
    public String displayHomePage(Model model) {
        //set up nav bar (with static pages)
        List<Blogpost> staticList = blogpostDao.getBlogpostByType("static");
        model.addAttribute("staticList", staticList);

        //set up post list
        List<Blogpost> blogList = blogpostDao.getBlogpostByType("blog");
        model.addAttribute("blogList", blogList);

        //set hashtag side menu
        List<Hashtag> tagList = hashtagDao.readAllHashtags();
        model.addAttribute("tagList", tagList);

        return "home";
    }
}