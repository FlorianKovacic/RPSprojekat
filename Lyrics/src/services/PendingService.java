package services;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import jwt.JWTGeneratorAndValidator;
import session.SongBean;

@Path("pending")
public class PendingService {

	@Inject
	SongBean sb;

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getPending(@Context HttpHeaders httpHeaders) {
		boolean authorized = JWTGeneratorAndValidator.verify(httpHeaders, true);
		if(authorized) {
			return Response.ok(sb.getPending()).build();
		} else {
			return Response.status(403).build();
		}
	}

}
