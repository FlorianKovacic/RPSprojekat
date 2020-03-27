package auxiliary;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;

public class NewLineConverter {

	private static String convert(char c) {
		switch(c) {
			case '\'': {
				return "''";
			}
			case '\r': {
				return "\\r";
			}
			case '\n': {
				return "\\n";
			}
			default: {
				return Character.toString(c);
			}
		}
	}

	public static String convert(String original) {
		return original.chars().mapToObj((c) -> (char) c).map(c -> convert(c)).reduce(String::concat).get();
	}

	public static void main(String args[]) {
		Reader in = new InputStreamReader(System.in);
		StringBuilder convertThis = new StringBuilder();
		while(true) {
			char c = '&';
			try {
				c = (char) in.read();
			} catch (IOException e) {
				e.printStackTrace();
			}
			if(c == '&') {
				break;
			}
			convertThis.append(c);
		}
		try {
			in.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String converted = convert(convertThis.toString());
		System.out.println(converted);
	}

}
