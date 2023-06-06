package com.example.practical_exam_wcd.dao;

import com.example.practical_exam_wcd.etity.EmployeeEntity;
import com.example.practical_exam_wcd.util.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

public class EmployeeDAO {
    EntityManager entityManager;
    EntityTransaction transaction;

    public EmployeeDAO() {
        entityManager = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }

    public List<EmployeeEntity> getAllEmployee(){
        try {
            Query query = entityManager.createQuery("SELECT a from EmployeeEntity as a");
            return query.getResultList();
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        return null;
    }

    public void insertEmployee(EmployeeEntity employeeEntity){
        try {
            transaction.begin();
            entityManager.persist(employeeEntity);
            transaction.commit();
        } catch (Exception e){
            System.out.println(e.getMessage());
            transaction.rollback();
        }
    }

}
