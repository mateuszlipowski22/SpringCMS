package pl.coderslab.app.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.app.models.Category;
import pl.coderslab.app.repositories.CategoryDao;

@Controller
public class CategoryController {

    private final CategoryDao categoryDao;

    public CategoryController(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    @GetMapping("/list-category")
    public String showALLCategories(Model model){
            model.addAttribute("categories", categoryDao.findAll());
        return "category/list";
    }

    @GetMapping("/add-category")
    public String showAddCategoryForm(Model model){
        model.addAttribute("category", new Category());
        return "category/add";
    }

    @PostMapping("/add-category")
    public String processAddCategoryForm(Category category){
        categoryDao.saveCategory(category);
        return "redirect:/list-category";
    }

    @GetMapping("/edit-category")
    public String showEditCategoryForm(Model model, Long id){
        model.addAttribute("category", categoryDao.findById(id));
        return "category/edit";
    }

    @PostMapping("/edit-category")
    public String processEditCategoryForm(Category category, Long id){
        Category dbCategory=categoryDao.findById(id);
        dbCategory.setDescription(category.getDescription());
        dbCategory.setName(category.getName());
        categoryDao.update(dbCategory);
        return "redirect:/list-category";
    }


    @GetMapping("/delete-category")
    public String showDeleteCategoryForm(Model model, Long id){
        model.addAttribute("category", categoryDao.findById(id));
        return "category/delete";
    }

    @PostMapping("/delete-category")
    public String processDeleteCategoryForm(Long id){
        categoryDao.delete(categoryDao.findById(id));
        return "redirect:/list-category";
    }
}
