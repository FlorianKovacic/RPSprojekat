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

import beans.Performer;
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
	public Response save(Performer p) {
		pb.save(p);
		return Response.ok().build();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public Response getOne(@PathParam("id") int id) {
		return Response.ok(pb.getById(id)).build();
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(Performer p) {
		boolean success = pb.update(p);
		if(success) {
			return Response.ok().build();
		} else {
			return Response.status(404).build();
		}
	}

	@DELETE
	@Path("/{id}")
	public Response delete(@PathParam("id") int id) {
		boolean success = pb.delete(id);
		if(success) {
			return Response.ok().build();
		} else {
			return Response.status(404).build();
		}
	}

}
