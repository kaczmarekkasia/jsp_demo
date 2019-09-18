package controller;

import model.Student;
import services.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//obowiązakowo nadajemy nazwę
@WebServlet("/student-list")
//servlety to klasy które mogą być wywoływane przez adresy URL
public class StudentListServlet extends HttpServlet {

    private final StudentService studentService = new StudentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//         // wyświetlanie studentów z klasy
        List<Student> studentList = studentService.findAll();
//        // "moja_ukochana_lista" <-- to jest klucz, może być dowolny
        req.setAttribute("moja_ukochana_lista", studentList);
//
//        // załaduj plik .jsp i przekieruj tam req (parametry i resp)
        req.getRequestDispatcher("/student-list.jsp").forward(req, resp);
    }
}

