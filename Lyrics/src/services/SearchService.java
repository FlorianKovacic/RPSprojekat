package services;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import auxiliary.SearchCriteria;
import session.SongBean;

@Path("songsearch")
public class SearchService {

	@Inject
	SongBean sb;

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response searchSong(SearchCriteria c) {
		return Response.ok(sb.search(c)).build();
	}

}
