package services;

import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

import session.SongBean;

@Path("approve")
public class ApproveService {

	@Inject
	SongBean sb;

	@POST
	@Path("/{id}")
	public Response approve(@PathParam("id") int id) {
		boolean success = sb.approve(id);
		if(success) {
			return Response.ok().build();
		} else {
			return Response.status(404).build();
		}
	}

}
