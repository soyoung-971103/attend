package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NoticeDAO extends DAOBase {
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private NoticeDTO notice = null;
	private ArrayList<NoticeDTO> alNotice = null;
	
	public ArrayList<NoticeDTO> list(){
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from notice");
			// email, pw는 form을 구성하는 각 요소의 이름
			alNotice = new ArrayList<NoticeDTO>();
			while(rs.next()) {
				notice = new NoticeDTO();
				notice.setId(rs.getInt(1));
				notice.setWriteday(rs.getDate(2));;
				notice.setTitle(rs.getString(3));
				notice.setTxt1(rs.getString(4));
				alNotice.add(notice);
			} return alNotice;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeDBResources(rs, stmt, pstmt, conn);
		}
		return alNotice;
	}
	
	public int register(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a");
		notice = new NoticeDTO();
		notice.setTitle(request.getParameter("title"));
		notice.setTxt1(request.getParameter("txt1"));
		try {
			notice.setWriteday(formatter.parse(request.getParameter("writeday")));
    	} catch(ParseException e) {
    		e.printStackTrace();
    	}
		System.out.println(notice.getWriteday());
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into notice values(?, ?, ?, ?)");
			pstmt.setInt(1, notice.getId());
	    	pstmt.setDate(2, new java.sql.Date(notice.getWriteday().getTime()));
	    	pstmt.setString(3, notice.getTitle());
	    	pstmt.setString(4, notice.getTxt1());
	    	result = pstmt.executeUpdate(); // 질의를 통해 수정된 레코드의 수
	    	return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeDBResources(rs, stmt, pstmt, conn);
		}
			return result;
	}
	
	public int delete(HttpServletRequest request, HttpServletResponse response) {
		int result=0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("delete from notice where id=?");
			pstmt.setString(1, request.getParameter("id"));
	    	result = pstmt.executeUpdate(); // 질의를 통해 수정된 레코드의 수
	    	return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeDBResources(rs, stmt, pstmt, conn);
		}
		return result;
	}
}
