package session;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import beans.User;
import jwt.JWTGeneratorAndValidator;

@Stateless
public class UserBean {

	@PersistenceContext(name = "lyrics")
	EntityManager em;

	public String login(User dummy) {
		User user = em.find(User.class, dummy.getUsername());
		if(user == null || !dummy.getPassword().equals(user.getPassword())) {
			return null;
		} else {
			return JWTGeneratorAndValidator.generateJWT(user);
		}
	}

	public boolean register(User user) {
		User existing = em.find(User.class, user.getUsername());
		if(existing != null) {
			return false;
		} else {
			em.persist(user);
			return true;
		}
	}

}
