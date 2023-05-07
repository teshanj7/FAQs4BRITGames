package game.faq;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteFaqServlet")
public class DeleteFaqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//initializing the parameter which is used to do the delete function
		String faq_id = request.getParameter("faq_id");
		
		//initializing a variable to the result of the delete function
		boolean isTrue;
		
		//calling the delete function from DBUtil
		isTrue = faqDBUtil.deleteFaq(faq_id);
		
		if(isTrue==true) {
			
			//listing all the data tuples in the database
			List<Faq> faqAllDetails = faqDBUtil.getAllFaqDetails();
			request.setAttribute("faqAllDetails", faqAllDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("userfaq.jsp"); //link all faq page after
			dispatcher.forward(request, response);
		}
		else {
			//List<Faq> faqDetails = faqDBUtil.getFaqDetails(faq_id);
			//request.setAttribute("faqDetails", faqDetails);
			
			//listing all the data tuples in the database
			List<Faq> faqAllDetails = faqDBUtil.getAllFaqDetails();
			request.setAttribute("faqAllDetails", faqAllDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("userfaq.jsp");
			dispatcher.forward(request, response);
		}
	}

}
