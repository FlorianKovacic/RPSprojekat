package auxiliary;

import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;

import org.apache.commons.codec.Charsets;

public class BackFromUTFToCp1250 {

	public static void main(String args[]) {
		String input = "src\\META-INF\\init.sql";
		String output = "src\\META-INF\\init2.sql";
		try (
				Reader r = new InputStreamReader(new FileInputStream(input), Charsets.UTF_8);
				PrintWriter w = new PrintWriter(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(output), "Windows-1250")));
				) {
			while(true) {
				int next = r.read();
				if(next == -1) {
					break;
				} else {
					w.print((char) next);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
