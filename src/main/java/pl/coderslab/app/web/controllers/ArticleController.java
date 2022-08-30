package pl.coderslab.app.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.app.models.Article;
import pl.coderslab.app.models.Author;
import pl.coderslab.app.models.Category;
import pl.coderslab.app.repositories.ArticleDao;
import pl.coderslab.app.repositories.AuthorDao;
import pl.coderslab.app.repositories.CategoryDao;

import java.util.List;

@Controller
public class ArticleController {

    private final ArticleDao articleDao;
    private final AuthorDao authorDao;
    private final CategoryDao categoryDao;

    public ArticleController(ArticleDao articleDao, AuthorDao authorDao, CategoryDao categoryDao) {
        this.articleDao = articleDao;
        this.authorDao = authorDao;
        this.categoryDao = categoryDao;
    }

    @ModelAttribute("authors")
    public List<Author> authors() {
        return authorDao.findall();
    }

    @ModelAttribute("categories")
    public List<Category> categories() {
        return categoryDao.findAll();
    }

    @GetMapping("/list-article")
    public String showALLArticles(Model model){
        model.addAttribute("articles", articleDao.findAll());
        return "article/list";
    }

    @GetMapping("/add-article")
    public String showAddArticleForm(Model model){
        model.addAttribute("article", new Article());
        return "article/add";
    }

    @PostMapping("/add-article")
    public String processAddArticleForm(Article article){
        articleDao.saveArticle(article);
        return "redirect:/list-article";
    }

    @GetMapping("/edit-article")
    public String showEditArticleForm(Model model, Long id){
        model.addAttribute("article", articleDao.findById(id));
        return "article/edit";
    }

    @PostMapping("/edit-article")
    public String processEditArticleForm(Article article, Long id){
        Article dbArticle=articleDao.findById(id);
        dbArticle.setAuthor(article.getAuthor());
        dbArticle.setCategories(article.getCategories());
        dbArticle.setContent(article.getContent());
        dbArticle.setTitle(article.getTitle());
        articleDao.update(dbArticle);
        return "redirect:/list-article";
    }


    @GetMapping("/delete-article")
    public String showDeleteArticleForm(Model model, Long id){
        model.addAttribute("article", articleDao.findById(id));
        return "article/delete";
    }

    @PostMapping("/delete-Article")
    public String processDeleteArticleForm(Long id){
        articleDao.delete(articleDao.findById(id));
        return "redirect:/list-article";
    }

}
