package service.impl;

import org.springframework.dao.DataAccessException;
import pojo.Customer;
import pojo.Employee;
import pojo.House;

import java.util.List;

public interface CustomerService {
    public List<Customer> findCustomerList()throws DataAccessException;

    public void deleteCustomers(Integer[] customerId)throws DataAccessException;

    public Customer findCustomerById(Integer customerId)throws DataAccessException;

    public void updateCustomer(Customer customer)throws DataAccessException;

    public void insertCustomer(Customer customer)throws DataAccessException;

    public List<Customer> findCustomerListWithOption(String option) throws DataAccessException;
}
