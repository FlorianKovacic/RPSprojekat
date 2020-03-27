package session;

import java.util.Date;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import beans.Comment;
import beans.Song;
import beans.User;

@Stateless
public class CommentBean {

	@PersistenceContext(name = "lyrics")
	EntityManager em;

	public List<Comment> getComments(Song song) {
		return em.createQuery("select c from Comment c where c.song.id = :id order by c.date", Comment.class).setParameter("id", song.getId()).getResultList();
	}

	public boolean save(Comment comment) {
		Song song = em.find(Song.class, comment.getSong().getId());
		User user = em.find(User.class, comment.getUser().getUsername());
		if(song == null || user == null) {
			return false;
		} else {
			comment.setSong(song);
			comment.setUser(user);
			comment.setDate(new Date());
			em.persist(comment);
			song.getComments().add(comment);
			user.getComments().add(comment);
			return true;
		}
	}

}
