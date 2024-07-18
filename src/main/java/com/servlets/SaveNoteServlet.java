package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		//title, content fetch
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Note note = new Note(title,content, new Date());
		
//		System.out.println(note.getId()+ " : "+note.getTitle());		
		//hibernate save
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(note);
		tx.commit();
		session.close();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1 style='text-align:center'>Note is added successfully<h1>");
		out.println("<h1 style='text-align:center'><a href='all_notes.jsp'>View All notes</><h1>");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
