

import java.io.*;
import java.util.*;
import java.text.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LeaveMessageServlet
 */
@WebServlet("/LeaveMessageServlet")
public class LeaveMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveMessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String messageText=request.getParameter("messageText");
		Date dNow=new Date();
		SimpleDateFormat ft=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String str=ft.format(dNow)+"-"+request.getRemoteAddr()+":"+messageText;
		System.out.println(str);
		try {
			File file=new File("C:\\Users\\Public\\leaveMessage.txt");
			if(!file.exists()) {
				file.createNewFile();
			}
			FileWriter writer=new FileWriter(file,true);
			writer.write(str+"\r\n");
			writer.flush();
			writer.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
