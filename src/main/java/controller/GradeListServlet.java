package controller;

import model.Grade;
import model.Student;
import services.GradeService;
import services.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet("/grade-list")
public class GradeListServlet extends HttpServlet {

    private final GradeService gradeService = new GradeService();
    private final StudentService studentService = new StudentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("studentId") != null) {
            Long studentId = Long.parseLong(req.getParameter("studentId")); //parametr url
            Optional<Student> studentById = studentService.getStudentById(studentId);
            if (studentById.isPresent()) {
                Student student = studentById.get();
                req.setAttribute("lista_ocen", student.getGradeList());
            }
            req.getRequestDispatcher("/grade-list.jsp").forward(req, resp);
        } else {
            List<Grade> gradeList = gradeService.findAll();
            req.setAttribute("lista_ocen", gradeList);
            req.getRequestDispatcher("/grade-list.jsp").forward(req, resp);
        }
    }
}
