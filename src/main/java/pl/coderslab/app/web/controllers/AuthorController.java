package pl.coderslab.app.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.app.models.Author;
import pl.coderslab.app.models.Category;
import pl.coderslab.app.repositories.AuthorDao;
import pl.coderslab.app.repositories.CategoryDao;

import javax.validation.Valid;

@Controller
public class AuthorController {

    private final AuthorDao authorDao;

    public AuthorController(AuthorDao authorDao) {
        this.authorDao = authorDao;
    }

    @GetMapping("/list-author")
    public String showAllAuthors(Model model){
        model.addAttribute("authors", authorDao.findall());
        return "author/list";
    }

    @GetMapping("/add-author")
    public String showAddAuthorForm(Model model){
        model.addAttribute("author", new Author());
        return "author/add";
    }

    @PostMapping("/add-author")
    public String processAddAuthorForm(@Valid Author author, BindingResult result){
        if(result.hasErrors()){
            return "author/add";
        }
        authorDao.saveAuthor(author);
        return "redirect:/list-author";
    }

    @GetMapping("/edit-author")
    public String showEditAuthorForm(Model model, Long id){
        model.addAttribute("author", authorDao.findById(id));
        return "author/edit";
    }

    @PostMapping("/edit-author")
    public String processEditAuthorForm(@Valid Author author, BindingResult result, Long id){
        if(result.hasErrors()){
            return "author/edit";
        }
        Author dbAuthor=authorDao.findById(id);
        dbAuthor.setFirstName(author.getFirstName());
        dbAuthor.setLastName(author.getLastName());
        authorDao.update(author);
        return "redirect:/list-author";
    }


    @GetMapping("/delete-author")
    public String showDeleteAuthorForm(Model model, Long id){
        model.addAttribute("author", authorDao.findById(id));
        return "author/delete";
    }

    @PostMapping("/delete-author")
    public String processDeleteCategoryForm(Long id){
        authorDao.delete(authorDao.findById(id));
        return "redirect:/list-author";
    }

}
