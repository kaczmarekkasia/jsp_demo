package controller;

import model.Student;
import services.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/student-edit")
public class StudentEditServlet extends HttpServlet {

    private final StudentService studentService = new StudentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long stunedtToEditId = Long.parseLong(req.getParameter("studentId"));
//      szukamy w bazie studenta
        Optional<Student> studentToEdit = studentService.getStudentById(stunedtToEditId);
        if (studentToEdit.isPresent()) { //jeśli ud się znależć studenta to:
            Student student = studentToEdit.get();

//            TODO: do dopisania ładowanie do jsp parametrów
            req.setAttribute("studentId", student.getId());
            req.setAttribute("studentAge", student.getAge());
            req.setAttribute("studentName", student.getName());
            req.setAttribute("studentSurname", student.getSurname());
            req.setAttribute("studentIsAlive", student.isAlive());


            req.getRequestDispatcher("/student-add.jsp").forward(req, resp);
        } else { //jeśli nie uda się znaleźć studenta to
            resp.sendRedirect("/student-add");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long editedStudentId = Long.parseLong(req.getParameter("student_id"));

        String name = req.getParameter("student_name");
        String surname = req.getParameter("student_lastname");
        int age = Integer.parseInt(req.getParameter("student_age"));
        String alive = req.getParameter("student_isalive");
        boolean isAlive = (alive != null && alive.equalsIgnoreCase("on"));



            Student studentEdited = new Student(editedStudentId, name, surname, age, isAlive);

            studentService.update(studentEdited);


        resp.sendRedirect("/student-list");
    }
}
