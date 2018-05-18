package com.jinstagram.pkg;

import java.awt.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.jinstagram.Instagram;
import org.jinstagram.auth.model.Token;
import org.jinstagram.auth.model.Verifier;
import org.jinstagram.auth.oauth.InstagramService;
import org.jinstagram.entity.tags.TagMediaFeed;




/**
 * Servlet implementation class JavaServlet
 */
@SuppressWarnings("deprecation")
@WebServlet("/JavaServlet")
public class JavaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public static final String INSTA_SERVICE="instaService";
       public static final String INSTA_OBJECT="objectService";
       public static final String INSTA_TOKEN="objectInstaToken";
    /**
     * @see HttpServlet#HttpServlet()
     */
       public JavaServlet() {
           super();
           // TODO Auto-generated constructor stub
       }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
    	
    	
		String code = request.getParameter("code");
		
		InstagramService instaService =(InstagramService) request.getSession().getAttribute(INSTA_SERVICE);
		
		Verifier verifier = new Verifier(code);
		Token token = instaService.getAccessToken(verifier);
		
		
		Instagram insta = new Instagram(token);
		
		
		
		//TagMediaFeed feed = insta.getRecentMediaTags("#party");
		
		//List dataList = (List) feed.getData();
		

		
		
		request.getSession().setAttribute(INSTA_TOKEN, token);
		request.getSession().setAttribute(INSTA_OBJECT, insta);
		//request.getSession().setAttribute(INSTA_LIST, dataList);
		response.sendRedirect(request.getContextPath()+"/index.jsp");
		
		//doGet(request, response);
	}

}
