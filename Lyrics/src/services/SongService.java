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

import beans.Song;
import jwt.JWTGeneratorAndValidator;
import session.SongBean;

@Path("song")
public class SongService {

	@Inject
	SongBean sb;

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getAll() {
		return Response.ok(sb.getAll()).build();
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response save(@Context HttpHeaders httpHeaders, Song s) {
		boolean authorized = JWTGeneratorAndValidator.verify(httpHeaders, false);
		if(authorized) {
			sb.save(s);
			return Response.ok().build();
		} else {
			return Response.status(403).build();
		}
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public Response getOne(@PathParam("id") int id) {
		return Response.ok(sb.getById(id)).build();
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(Song s) {
		boolean success = sb.update(s);
		if(success) {
			return Response.ok().build();
		} else {
			return Response.status(404).build();
		}
	}

	@DELETE
	@Path("/{id}")
	public Response delete(@PathParam("id") int id) {
		boolean success = sb.delete(id);
		if(success) {
			return Response.ok().build();
		} else {
			return Response.status(404).build();
		}
	}

}
