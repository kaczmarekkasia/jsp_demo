package controller;

import model.GradeSubject;
import model.Student;
import services.GradeService;
import services.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/grade-add")
public class GradeAddServlet extends HttpServlet {
    private final GradeService gradeService = new GradeService();
    private final StudentService studentService = new StudentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long studentId = Long.parseLong(req.getParameter("studentId"));

        req.setAttribute("studentId", studentId);

        req.getRequestDispatcher("/grade-add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long studentIdentifier = Long.parseLong(req.getParameter("student_to_whom_i_should_give_grade_to"));
        Optional<Student> optionalStudent = studentService.getStudentById(studentIdentifier);

        if (optionalStudent.isPresent()){
            Student student = optionalStudent.get();

            GradeSubject gradeSubject = GradeSubject.valueOf(req.getParameter("grade_subject"));
            double value = Double.parseDouble(req.getParameter("grade_value"));

            gradeService.addGrade(student, gradeSubject, value);

            resp.sendRedirect("/grade-list?studentId=" + studentIdentifier);
        }


    }
}
