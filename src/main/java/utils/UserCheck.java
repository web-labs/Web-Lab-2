package utils;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class UserCheck {
    public boolean search(String user) throws FileNotFoundException {
        String path = "C:\\Users\\user\\IdeaProjects\\Web_Lab2\\possibleDirs.txt";
        boolean found = false;
        try (BufferedReader br = new BufferedReader(new FileReader(path))){
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
