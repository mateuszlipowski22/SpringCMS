package pl.coderslab.app.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.app.repositories.ArticleDao;

@Controller
public class HomePageController {

    public HomePageController(ArticleDao articleDao) {
        this.articleDao = articleDao;
    }

    private final ArticleDao articleDao;


    @GetMapping("/")
    public String home(Model model){
        model.addAttribute("lastFiveArticles", articleDao.findLastFive());
        return "home";
    }
}
