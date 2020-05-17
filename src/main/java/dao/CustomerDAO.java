package dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import pojo.Customer;
import pojo.Employee;

import java.util.List;

/**
 * CustomerDAO继承基类
 */
@Repository
public interface CustomerDAO extends MyBatisBaseDao<Customer, Integer> {
    public List<Customer> findCustomerList() throws DataAccessException;

    public void insertWithId(Customer customer);

    public List<Customer> findCustomerListWithOption(String option) throws DataAccessException;
}