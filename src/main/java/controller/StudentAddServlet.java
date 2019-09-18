package controller;

import services.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/student-add")
public class StudentAddServlet extends HttpServlet {
    private final StudentService studentService = new StudentService();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, IOException {
        req.getRequestDispatcher("/student-add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("student_name");
        String lastname = req.getParameter("student_lastname");
        int age = Integer.parseInt(req.getParameter("student_age"));

        String alive = req.getParameter("student_isalive");
        boolean isAlive = (alive != null && alive.equalsIgnoreCase("on"));

        // przekazujemy parametry do serwisu
        studentService.addStudent(name, lastname, age, isAlive);

        resp.sendRedirect("/student-list");
    }
}
