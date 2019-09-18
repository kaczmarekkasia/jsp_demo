package controller;

import model.GradeSubject;
import services.GradeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/grade-add")
public class GradeAddServlet extends HttpServlet {
    private final GradeService gradeService = new GradeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/grade-add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GradeSubject gradeSubject = GradeSubject.valueOf(req.getParameter("grade_subject"));

        double value = Double.parseDouble(req.getParameter("grade_value"));

        gradeService.addGrade(gradeSubject, value);

        resp.sendRedirect("/grade-list");
    }
}
