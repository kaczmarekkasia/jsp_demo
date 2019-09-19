package services;

import database.EntityDao;
import model.Student;

import java.util.List;
import java.util.Optional;

public class StudentService {

    private EntityDao entityDao = new EntityDao();


    public StudentService() {
 }

    public List<Student> findAll(){
        return entityDao.getAll(Student.class);
    }

    public void addStudent(String name, String lastname, Integer age, Boolean isAlive) {
        entityDao.saveOrUpdate(new Student(name, lastname, age, isAlive));
    }

    public void removeStudentById(Long stunedtToRemoveId) {
        entityDao.delete(Student.class, stunedtToRemoveId);
    }

    public Optional<Student> getStudentById(Long stunedtToEditId) {
        return entityDao.getById(Student.class, stunedtToEditId);
    }

    public void update(Student studentEdited) {
        entityDao.saveOrUpdate(studentEdited);
    }
}
