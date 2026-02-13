package controller;
import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Person;
import service.PersonService;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/*@Override
    public void init() throws ServletException {
        PersonService.insert(new Person("John", "Doe"));
        PersonService.insert(new Person("Hans", "Muster"));
        PersonService.insert(new Person("Jane", "Doe"));
    }*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	ArrayList<Person> persons = PersonService.getPersons();
		request.setAttribute("persons", persons);
        request.getRequestDispatcher("listPerson.jsp").forward(request, response);
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uuid = request.getParameter("uuid");
		System.out.println(uuid);
		PersonService.delete(uuid);
		response.setStatus(200);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uuid = request.getParameter("uuid");
	    String first = request.getParameter("first");
	    String last = request.getParameter("last");
	    
	    if(uuid == null) {
		    Person person = new Person(first, last);
		    PersonService.insert(person);
		    
		    String resp = "Person added";
		    request.setAttribute("resp", resp);
	        request.getRequestDispatcher("createPerson.jsp").forward(request, response);
	    }else {
		    PersonService.update(uuid, first, last);
		    
		    String resp = "Person Updated";
		    request.setAttribute("resp", resp);
	        request.getRequestDispatcher("update.jsp").forward(request, response);
	    }
	}
}