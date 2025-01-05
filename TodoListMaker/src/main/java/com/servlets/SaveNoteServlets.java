package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Random;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlets
 */
@WebServlet("/SaveNoteServlet")
public class SaveNoteServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			int id = new Random().nextInt(100000);  // Generate an ID
			Note note = new Note(id, title, content, new Date());
//			System.out.println(note.getId());
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("<h1 Style='text-align:center'>Note is added successfully</h1>");
			out.print("<h1 style='text-align:center; margin-top:20px;'><a href='all_notes.jsp' style='color:#1E90FF; text-decoration:none; font-family:sans-serif; font-size:24px;'>View All Notes</a></h1>");

			out.print("<h1 style='text-align:center; margin-top:20px;'><a href='add_notes.jsp' style='color:#32CD32; text-decoration:none; font-family:sans-serif; font-size:24px;'>Add More Notes</a></h1>");

		}
		catch(Exception e) {
			e.getMessage();
		}
	}

}
