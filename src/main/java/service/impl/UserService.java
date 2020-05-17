package service.impl;


import org.springframework.dao.DataAccessException;
import pojo.Employee;

import java.util.List;

public interface UserService {
    public Employee getAuthority(Integer empid,String password);

    public List<Employee> findEmpList();

    public boolean deleteEmps(Integer[] empids)throws DataAccessException;

    public Employee findEmpById(Integer empId)throws DataAccessException;

    public void updateEmp(Employee employee)throws DataAccessException;

    public void insertEmp(Employee employee)throws DataAccessException;

    public Integer countTotalEmp()throws DataAccessException;

    public List<Employee> findEmpListWithOption(String option) throws DataAccessException;
}
