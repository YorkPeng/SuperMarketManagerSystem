package service;

import dao.CustomerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import pojo.Customer;
import pojo.Employee;
import service.impl.CustomerService;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDAO customerDAO;


    @Override
    public List<Customer> findCustomerList() {
        return customerDAO.findCustomerList();
    }

    @Override
    public void deleteCustomers(Integer[] customerIds) {
        for (Integer customerId:customerIds) {
            customerDAO.deleteByPrimaryKey(customerId);
        }
    }

    @Override
    public Customer findCustomerById(Integer customerId) {
        return customerDAO.selectByPrimaryKey(customerId);
    }

    @Override
    public void updateCustomer(Customer customer) {
        customerDAO.updateByPrimaryKey(customer);
    }

    @Override
    public void insertCustomer(Customer customer) {
        customerDAO.insert(customer);
    }

    @Override
    public List<Customer> findCustomerListWithOption(String option) throws DataAccessException {
        return customerDAO.findCustomerListWithOption(option);
    }
}
