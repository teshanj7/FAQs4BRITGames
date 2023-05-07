package game.faq;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RetriveFaqServlet")
public class RetriveFaqServlet extends HttpServlet{
private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*String faq_id = request.getParameter("faq_id");
		String userType = request.getParameter("type");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phoneno");
		String question = request.getParameter("question");*/
		
		//initializing a variable for the result coming from the function
		boolean isTrue;
		
		//caling the retrieve function from DBUtil
		isTrue = faqDBUtil.retrieveFaq();
		
		if(isTrue== true) {
			
			//List<Faq> faqDetails = faqDBUtil.getFaqDetails(name);
			//request.setAttribute("faqDetails", faqDetails);
			
			
			//listing all the data tuples in the database
			List<Faq> faqAllDetails = faqDBUtil.getAllFaqDetails();
			request.setAttribute("faqAllDetails", faqAllDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userfaq.jsp");
			dis.forward(request, response);
		}
		else {
			//listing all the data tuples in the database
			List<Faq> faqAllDetails = faqDBUtil.getAllFaqDetails();
			request.setAttribute("faqAllDetails", faqAllDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("userfaq.jsp");
			dis2.forward(request, response); 
		}
		
	}
}
