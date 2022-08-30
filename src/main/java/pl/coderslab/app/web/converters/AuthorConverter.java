package pl.coderslab.app.web.converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.app.models.Author;
import pl.coderslab.app.models.Category;
import pl.coderslab.app.repositories.AuthorDao;
import pl.coderslab.app.repositories.CategoryDao;

public class AuthorConverter implements Converter<String, Author>{

        private AuthorDao authorDao;

        @Autowired
        public void setAuthorDao(AuthorDao authorDao) {
            this.authorDao = authorDao;
        }

        @Override
        public Author convert(String source) {
            return authorDao.findById(Long.parseLong(source));
        }

}
