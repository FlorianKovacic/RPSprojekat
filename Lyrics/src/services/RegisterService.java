package services;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import beans.User;
import session.UserBean;

@Path("register")
public class RegisterService {

	@Inject
	UserBean ub;

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public Response register(User user) {
		boolean success = ub.register(user);
		if(success) {
			return Response.ok().build();
		} else {
			return Response.status(400).build();
		}
	}

}
