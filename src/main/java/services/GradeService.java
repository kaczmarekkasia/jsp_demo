package services;

import database.EntityDao;
import model.Grade;
import model.GradeSubject;
import model.Student;

import java.util.List;

public class GradeService {

    private EntityDao entityDao = new EntityDao();

    public GradeService() {
    }

    public List<Grade> findAll(){
        return entityDao.getAll(Grade.class);
    }

    public void addGrade(Student student, GradeSubject gradeSubject, double value){
        Grade grade = new Grade(gradeSubject, value);
        grade.setStudent(student);

        entityDao.saveOrUpdate(grade);
    }
}
