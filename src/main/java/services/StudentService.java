package services;

import database.EntityDao;
import model.Student;

import java.util.List;

public class StudentService {

    private EntityDao entityDao = new EntityDao();


    public StudentService() {
 }

    public List<Student> findAll(){
        return entityDao.getAll(Student.class);
    }

    public void addStudent(String name, String lastname, Integer age, Boolean isAlive) {
        entityDao.saveOrUpdate(new Student(null, name, lastname, age, isAlive));
    }
}
