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

	public boolean update(Author a) {
		Author og = em.find(Author.class, a.getId());
		if(og != null) {
			og.copyValues(a);
			em.merge(og);
			return true;
		} else {
			return false;
		}
	}

	public boolean delete(int id) {
		Author a = em.find(Author.class, id);
		if(a != null) {
			em.remove(a);
			return true;
		} else {
			return false;
		}
	}

}
