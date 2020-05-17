package dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import pojo.Employee;

import java.util.List;

/**
 * EmployeeDAO继承基类
 */
@Repository
public interface EmployeeDAO extends MyBatisBaseDao<Employee, Integer> {

    public List<Employee> findEmpList()throws DataAccessException;

    public Integer countTotalEmp()throws DataAccessException;

    public List<Employee> findEmpListWithOption(String option) throws DataAccessException;

    public String check(Integer id) throws DataAccessException;
}