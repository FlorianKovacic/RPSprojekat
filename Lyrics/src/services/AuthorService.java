package services;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import beans.Author;
import session.AuthorBean;

@Path("Author")
public class AuthorService {

	@Inject
	AuthorBean ab;

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getAll() {
		return Response.ok(ab.getAll()).build();
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response save(Author a) {
		ab.save(a);
		return Response.ok().build();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public Response getOne(@PathParam("id") int id) {
		return Response.ok(ab.getById(id)).build();
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(Author a) {
		boolean success = ab.update(a);
		if(success) {
			return Response.ok().build();
		} else {
			return Response.status(404).build();
		}
	}

	@DELETE
	@Path("/{id}")
	public Response delete(@PathParam("id") int id) {
		boolean success = ab.delete(id);
		if(success) {
			return Response.ok().build();
		} else {
			return Response.status(404).build();
		}
	}

}

