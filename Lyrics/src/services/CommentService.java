package services;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import beans.Comment;
import beans.Song;
import jwt.JWTGeneratorAndValidator;
import session.CommentBean;

@Path("comment")
public class CommentService {

	@Inject
	CommentBean cb;

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response getComments(Song song) {
		return Response.ok(cb.getComments(song)).build();
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public Response save(@Context HttpHeaders httpHeaders, Comment comment) {
		boolean authorized = JWTGeneratorAndValidator.verify(httpHeaders, false, comment.getUser().getUsername());
		if(authorized) {
			boolean success = cb.save(comment);
			if(success) {
				return Response.ok().build();
			} else {
				return Response.status(400).build();
			}
		} else {
			return Response.status(403).build();
		}
	}

}
