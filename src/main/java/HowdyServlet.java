import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// Always extends tp HttpServlet

@WebServlet("/howdy") //When run write /howdy to run page.
public class HowdyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // See on terminal
        System.out.println("Howdy");
        // Do something HTML
        //link to PartnerServlet class by adding the WebServlet(/"partner")
        response.getWriter().println("<h1><a href='/partner'>Howdy</a></h1>");

    }
}
