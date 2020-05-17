package service;

import dao.EmployeeDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import pojo.Employee;
import service.impl.UserService;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private EmployeeDAO employeeDAO;

    @Override
    public Employee getAuthority(Integer empid,String password)throws DataAccessException {
        Employee employee = employeeDAO.selectByPrimaryKey(empid);
        String str = getMD5(password);
        if (employee != null){
            String real = employeeDAO.check(empid);
            assert str != null;
            if (str.equals(real)){
                return employee;
            }
        }
        return null;
    }

    @Override
    public List<Employee> findEmpList()throws DataAccessException {
        return employeeDAO.findEmpList();
    }

    @Override
    public boolean deleteEmps(Integer[] userids) throws DataAccessException{
        int count =0;
        for (Integer userid:userids) {
            count += employeeDAO.deleteByPrimaryKey(userid);
        }
        if (count == userids.length){
            return true;
        }
        return false;
    }

    @Override
    public Employee findEmpById(Integer empId)throws DataAccessException {
        return employeeDAO.selectByPrimaryKey(empId);
    }

    @Override
    public void updateEmp(Employee employee)throws DataAccessException {
        String result = getMD5(employee.getEmppassword());
        employee.setEmppassword(result);
        employeeDAO.updateByPrimaryKey(employee);
    }

    @Override
    public void insertEmp(Employee employee)throws DataAccessException {
        String result = getMD5(employee.getEmppassword());
        employee.setEmppassword(result);
        employeeDAO.insert(employee);
    }

    @Override
    public Integer countTotalEmp() throws DataAccessException {
        return employeeDAO.countTotalEmp();
    }

    @Override
    public List<Employee> findEmpListWithOption(String option) throws DataAccessException {
        return employeeDAO.findEmpListWithOption(option);
    }

    private String getMD5(String str){
        String result = "";
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes());
            byte b[] = md.digest();
            int i ;
            StringBuffer buffer = new StringBuffer("");
            for (int offset=0;offset<b.length;offset++){
                i=b[offset];
                if (i<0){
                    i+=256;
                }
                if (i < 16){
                    buffer.append("0");
                }
                buffer.append(Integer.toHexString(i));
            }
            result = buffer.toString();
            return result;
        }catch (NoSuchAlgorithmException e){
            e.printStackTrace();
        }
        return null;
    }

}
