package FunCalculatorPackage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/funCalc")
public class FunCalculator extends HttpServlet {
    private String[] jokes = {
            "Why do Java developers wear glasses? Because they don't C#!",
            "I told my computer I needed a break, and now it won't stop sending me Kit Kat bars.",
            "Why don't programmers like nature? It has too many bugs.",
            "How many programmers does it take to change a light bulb? None, it's a hardware problem.",
            // Add more jokes here
    };
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String str1 = req.getParameter("num1");
        String str2 = req.getParameter("num2");

        String value = req.getParameter("bt1");

        int values = Integer.parseInt(value);
        int num1 = Integer.parseInt(str1);
        int num2 = Integer.parseInt(str2);

        int ans;

        if(value.equals("1")) ans = num1 + num2;
        else if(value.equals("2")) ans = num1 - num2;
        else if(value.equals("3")) ans = num1 * num2;
        else ans = num1 / num2;

//        switch(values){
//            case 1 :
//                ans = num1+num2;
//                break;
//            case 2 :
//                ans = num1-num2;
//                break;
//            case 3 :
//                ans = num1 * num2;
//                break;
//            case 4 :
//                ans = num1/num2;
//                break;
//        }

//        resp.getWriter().append("Ans = " + ans);

//        resp.sendRedirect("Second.jsp");

        int randomIndex = (int) (Math.random() * jokes.length);
        String randomJoke = jokes[randomIndex];

        req.getSession().setAttribute("joke",randomJoke);
        req.getSession().setAttribute("answer", ans);
        resp.sendRedirect("Second.jsp");
    }

}
