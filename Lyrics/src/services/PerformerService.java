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
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import beans.Performer;
import jwt.JWTGeneratorAndValidator;
import session.PerformerBean;

@Path("performer")
public class PerformerService {

	@Inject
	PerformerBean pb;

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getAll() {
		return Response.ok(pb.getAll()).build();
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response save(@Context HttpHeaders httpHeaders, Performer p) {
		boolean authorized = JWTGeneratorAndValidator.verify(httpHeaders, true, null);
		if(authorized) {
			pb.save(p);
			return Response.ok().build();
		} else {
			return Response.status(403).build();
		}
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public Response getOne(@PathParam("id") int id) {
		return Response.ok(pb.getById(id)).build();
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(@Context HttpHeaders httpHeaders, Performer p) {
		boolean authorized = JWTGeneratorAndValidator.verify(httpHeaders, true, null);
		if(authorized) {
			pb.update(p);
			return Response.ok().build();
		} else {
			return Response.status(403).build();
		}
	}

	@DELETE
	@Path("/{id}")
	public Response delete(@Context HttpHeaders httpHeaders, @PathParam("id") int id) {
		boolean authorized = JWTGeneratorAndValidator.verify(httpHeaders, true, null);
		if(authorized) {
			pb.delete(id);
			return Response.ok().build();
		} else {
			return Response.status(403).build();
		}
	}

}
