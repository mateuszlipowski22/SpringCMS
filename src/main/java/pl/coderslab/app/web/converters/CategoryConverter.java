package pl.coderslab.app.web.converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.app.models.Category;
import pl.coderslab.app.repositories.CategoryDao;

public class CategoryConverter implements Converter<String, Category>{

        private CategoryDao categoryDao;

        @Autowired
        public void setCategoryDao(CategoryDao categoryDao) {
            this.categoryDao = categoryDao;
        }

        @Override
        public Category convert(String source) {
            return categoryDao.findById(Long.parseLong(source));
        }

}
