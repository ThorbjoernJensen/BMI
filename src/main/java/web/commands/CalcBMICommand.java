package web.commands;

import business.exceptions.UserException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalcBMICommand extends CommandUnprotectedPage {
    public CalcBMICommand(String pageToShow) {
        super(pageToShow);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        Double height = 0.0;
        Double weight = 0.0;
        Double bmi = 0.0;

        String category = "";

        try {
            height = Double.parseDouble(request.getParameter("height"));
            weight = Double.parseDouble(request.getParameter("weight"));
        } catch (NumberFormatException e) {
            throw new UserException("husk at du skal indtaste to heltal");
        }

        bmi = weight / ((height / 100) * (height / 100));

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
        request.setAttribute("bmi",bmi);
        request.setAttribute("height",height);
        request.setAttribute("weight",weight);
        request.setAttribute("category",category);
        return pageToShow;
    }
}

