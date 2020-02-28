package auxiliary;

import beans.User;

public class JWTGeneratorAndValidator {

	private static int hash(User user) {
		return (user.getUsername() + user.getPassword()).hashCode();
	}

	public static JWT generateJWT(User user) {
		return new JWT(hash(user));
	}

	public static boolean valid(JWT jwt, User user) {
		return jwt.getHash() == hash(user);
	}

}
