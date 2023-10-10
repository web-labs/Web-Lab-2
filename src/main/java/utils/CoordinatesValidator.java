package utils;

import servlets.ControllerServlet;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CoordinatesValidator {

    private final double x, y, r;

    public CoordinatesValidator(double x, double y, double r){
        this.x = x;
        this.y = y;
        this.r = r;
    }

    public boolean validate(){
        return checkX() && checkY() && checkR() && checkEmpty();
    }

    private boolean checkX(){

        return -3 < x && x < 5;
    }

    private boolean checkY(){
        return -3 <= y && y <= 5;
    }

    private boolean checkR(){
        List<? extends Number> possibleR = Arrays.asList(1.0, 1.5, 2.0, 2.5, 3.0);
        return possibleR.contains(r);
    }

    private boolean checkEmpty(){
        return !(String.valueOf(x).isEmpty() || String.valueOf(y).isEmpty() || String.valueOf(r).isEmpty());
    }
}
