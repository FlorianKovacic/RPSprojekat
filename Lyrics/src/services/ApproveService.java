package services;

import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.Response;

import jwt.JWTGeneratorAndValidator;
import session.SongBean;

@Path("approve")
public class ApproveService {

	@Inject
	SongBean sb;

	@POST
	@Path("/{id}")
	public Response approve(@Context HttpHeaders httpHeaders, @PathParam("id") int id) {
		boolean authorized = JWTGeneratorAndValidator.verify(httpHeaders, true, null);
		if(authorized) {
			sb.approve(id);
			return Response.ok().build();
		} else {
			return Response.status(403).build();
		}
	}

}
