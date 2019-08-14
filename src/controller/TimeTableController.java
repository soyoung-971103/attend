package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import model.TimeTableDTO;
import model.TimeTableDAO;

@WebServlet({"/timetable-list.do" })
@MultipartConfig(location="", 
fileSizeThreshold=1024*1024, 
maxFileSize=1024*1024*5, 
maxRequestSize=1024*1024*5*5)
public class TimeTableController extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimeTableController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    java.sql.Connection conn = null;
	java.sql.Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	TimeTableDTO TimeTable = null;
	ArrayList<TimeTableDTO> alTimeTable = null;
	HttpSession session = null;
	TimeTableDAO dao = null;

    protected void process(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	session = request.getSession();
    	dao = new TimeTableDAO();
    	conn = dao.getConnection();
    	
    	String uri = request.getRequestURI();
    	int lastIndex = uri.lastIndexOf('/');
    	String action = uri.substring(lastIndex + 1);
    	
    	if(action.equals("timetable-list.do")) 
			list(request, response);
    	else
    		;
    }
    
    protected void list(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		 alTimeTable = dao.list();
			request.setAttribute("timetablelist", alTimeTable);
			request.getRequestDispatcher("te_time.jsp").forward(request, response);
	}
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			process(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			process(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    
}