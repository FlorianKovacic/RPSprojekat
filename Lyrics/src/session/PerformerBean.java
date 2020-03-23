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
		return em.createQuery("select distinct p from Performer p order by p.name", Performer.class).getResultList();
	}

	public Performer getById(int id) {
		return em.find(Performer.class, id);
	}

	public void save(Performer p) {
		em.persist(p);
	}

	public boolean update(Performer p) {
		Performer og = em.find(Performer.class, p.getId());
		if(og != null) {
			og.copyValues(p);
			em.merge(og);
			return true;
		} else {
			return false;
		}
	}

	public boolean delete(int id) {
		Performer p = em.find(Performer.class, id);
		if(p != null) {
			em.remove(p);
			return true;
		} else {
			return false;
		}
	}

}
