package services;

import database.EntityDao;
import model.Grade;
import model.GradeSubject;

import java.util.List;

public class GradeService {

    private EntityDao entityDao = new EntityDao();

    public GradeService() {
    }

    public List<Grade> findAll(){
        return entityDao.getAll(Grade.class);
    }

    public void addGrade(GradeSubject gradeSubject, double value){
        entityDao.saveOrUpdate(new Grade(null, gradeSubject, null, value));
    }
}
