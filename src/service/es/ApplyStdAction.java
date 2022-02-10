package service.es;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.es.RecuBoardDao;
import dao.es.StdAppply;
import service.CommandProcess;

public class ApplyStdAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		try {
			HttpSession session=request.getSession();
			request.setCharacterEncoding("utf-8");
			StdAppply stdApply=new StdAppply();
			RecuBoardDao rbd=RecuBoardDao.getInstance();
			int pageNum=Integer.parseInt(request.getParameter("pageNum"));
			int pageSize=Integer.parseInt(request.getParameter("pageSize"));
			int b_num=Integer.parseInt(request.getParameter("b_num"));
			int checkStd=Integer.parseInt(request.getParameter("checkStd"));
			stdApply.setStdnum(Integer.parseInt(request.getParameter("stdnum")));
			stdApply.setApply_content(request.getParameter("apply_content"));
			stdApply.setParticipant_id((String)session.getAttribute("sessionID"));
			int result;
			if(checkStd==2)
				result=rbd.updateApplyStd(stdApply);
			else
				result=rbd.insertApplyStd(stdApply);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("pageSize", pageSize);
			request.setAttribute("result", result);
			request.setAttribute("b_num", b_num);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "applyStdPro.jsp";
	}

}
