package jwt;

import java.util.List;

import javax.ws.rs.core.HttpHeaders;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTCreator.Builder;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.interfaces.Verification;

import beans.User;

public class JWTGeneratorAndValidator {

	private static final String secret = "secret";
	private static final Algorithm algorithm = Algorithm.HMAC256(secret);

	public static String generateJWT(User user) {
		Builder builder = JWT.create();
		if(user.isAdmin()) {
			builder = builder.withClaim("admin", true);
		}
		return builder.sign(algorithm);
	}

	public static boolean valid(String jwt, boolean adminNeeded) {
		Verification  verification= JWT.require(algorithm);
		if(adminNeeded) {
			verification = verification.withClaim("admin", true);
		}
		try {
			@SuppressWarnings("unused")
			DecodedJWT djwt = verification.build().verify(jwt);
			return true;
		} catch (JWTVerificationException e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean verify(HttpHeaders headers, boolean adminNeeded) {
		List<String> authHeader = headers.getRequestHeader("Authorization");
		if(authHeader.isEmpty()) {
			return false;
		} else {
			String jwt = authHeader.get(0).substring(6);
			return valid(jwt, adminNeeded);
		}
	}

}
