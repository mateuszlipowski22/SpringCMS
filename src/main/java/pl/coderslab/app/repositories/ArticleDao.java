package pl.coderslab.app.repositories;

import org.springframework.stereotype.Repository;
import pl.coderslab.app.models.Article;
import pl.coderslab.app.models.Category;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;


@Repository
@Transactional
public class ArticleDao {

    @PersistenceContext
    EntityManager entityManager;

    public void saveArticle(Article article) {
        entityManager.persist(article);
    }

    public Article findById(long id) {
        return entityManager.find(Article.class, id);
    }

    public void update(Article article) {
        entityManager.merge(article);
    }

    public void delete(Article article) {
        entityManager.remove(entityManager.contains(article) ?
                article : entityManager.merge(article));
    }

    public List<Article> findAll(){
        Query query = entityManager.createQuery("SELECT article FROM Article article", Article.class);
        return query.getResultList();
    }

    public List<Article> findLastFive(){
        Query query = entityManager.createQuery("SELECT article FROM Article article ORDER BY article.createdOn",Article.class);
        return query.setMaxResults(5).getResultList();
    }

}
