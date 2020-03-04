package services;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import beans.User;
import session.UserBean;

@Path("login")
public class LoginService {

	@Inject
	UserBean ub;

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces("application/jwt")
	public Response login(User user) {
		String jwt = ub.login(user);
		if(jwt != null) {
			return Response.ok(jwt).build();
		} else {
			return Response.status(400).build();
		}
	}

}
