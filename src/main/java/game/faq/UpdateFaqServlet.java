package game.faq;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateFaqServlet")
public class UpdateFaqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//initializing the parameters used for the update function
		String faq_id = request.getParameter("faq_id");
		String userType = request.getParameter("type");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phoneno");
		String question = request.getParameter("question");
		
		//initializing a variable for the result of the update function
		boolean isTrue;
		
		//calling the update function from the DBUtil
		isTrue = faqDBUtil.updateFaq(faq_id, userType, name, email, phone, question);
		
		if(isTrue==true) {
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
			List<Faq> faqDetails = faqDBUtil.getFaqDetails(name);
			request.setAttribute("faqDetails", faqDetails);
			

			//List<Faq> faqAllDetails = faqDBUtil.getAllFaqDetails();
			//request.setAttribute("faqAllDetails", faqAllDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userfaq.jsp");
			dis.forward(request, response);
		}
	}

}
