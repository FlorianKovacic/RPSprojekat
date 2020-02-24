package session;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import beans.Performer;

@Stateless
public class PerformerBean {

	@PersistenceContext(name = "lyrics")
	EntityManager em;

	public List<Performer> getAll() {
		return (List<Performer>) em.createQuery("select p from Performer p", Performer.class).getResultList();
	}

	public Performer getById(int id) {
		return em.find(Performer.class, id);
	}

	public void save(Performer p) {
		em.persist(p);
	}

	public void update(Performer p) {
		Performer og = em.find(Performer.class, p.getId());
		og.copyValues(p);
		em.merge(og);
	}

	public void delete(int id) {
		Performer p = em.find(Performer.class, id);
		em.remove(p);
	}

}
