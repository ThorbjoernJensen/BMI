package business.services;

import business.exceptions.UserException;

public class BmiUtil {
    public static Double calcBMI(Double height, Double weight) {
        return weight / ((height / 100) * (height / 100));


    }

    public static String getCategory(Double bmi) {
        String category = "";

        if (bmi < 18.5) {
            category = "undervægtig";
        } else {
            if (bmi < 25) {
                category = "normalvægtig";
            } else {
                if (bmi < 30) {
                    category = "overvægtig";
                } else {
                    category = "svært overvægtig";
                }
            }
        }
        return category;

    }
}
