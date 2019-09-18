package controller;

import model.Grade;
import services.GradeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/grade-list")
public class GradeListServlet extends HttpServlet {

    private final GradeService gradeService = new GradeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Grade> gradeList= gradeService.findAll();

        req.setAttribute("lista ocen", gradeList);

        req.getRequestDispatcher("/grade-list.jsp").forward(req, resp);
    }
}
