package utils;

import java.io.*;

public class UserCheck {
    public boolean search(String user) throws FileNotFoundException {
        InputStream is = getClass().getClassLoader().getResourceAsStream("possibleDirs.txt");
        boolean found = false;
        try (BufferedReader br = new BufferedReader(new InputStreamReader(is))){
            String line;

            while ((line = br.readLine()) != null){
                if (line.contains(user)) {
                    found = true;
                    break;
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return found;
    }

}
