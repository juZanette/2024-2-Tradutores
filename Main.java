import java.io.*;
import java.io.FileReader;

class Main {
	static public void main(String argv[]){
		try{
			FileReader in = new FileReader("entrada.txt");
			parser p = new parser(new Yylex(in));
			Object result = p.parse().value;
		} catch (Exception e){
			e.printStackTrace();
		}
	}
}