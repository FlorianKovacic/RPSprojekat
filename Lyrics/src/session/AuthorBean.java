package session;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import beans.Author;

@Stateless
public class AuthorBean {

	@PersistenceContext(name = "lyrics")
	EntityManager em;

	public List<Author> getAll() {
		return (List<Author>) em.createQuery("select a from Author a", Author.class).getResultList();
	}

	public Author getById(int id) {
		return em.find(Author.class, id);
	}

	public void save(Author a) {
		em.persist(a);
	}

	public void update(Author a) {
		Author og = em.find(Author.class, a.getId());
		og.copyValues(a);
		em.merge(og);
	}

	public void delete(int id) {
		Author a = em.find(Author.class, id);
		em.remove(a);
	}

}
