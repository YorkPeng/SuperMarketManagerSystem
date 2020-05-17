package service.impl;

import org.springframework.dao.DataAccessException;
import pojo.House;
import pojo.Supplier;

import java.util.List;

public interface SupplierService {
    public List<Supplier> findSupplierList()throws DataAccessException;

    public void deleteSuppliers(Integer[] SuppliersId)throws DataAccessException;

    public Supplier findSupplierById(Integer SupplierId)throws DataAccessException;

    public void updateSupplier(Supplier Supplier)throws DataAccessException;

    public void insertSupplier(Supplier Supplier)throws DataAccessException;

    public List<Supplier> findSupplierListWithOption(String option) throws DataAccessException;
}
