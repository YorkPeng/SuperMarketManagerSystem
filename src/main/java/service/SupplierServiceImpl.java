package service;

import dao.SupplierDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import pojo.Supplier;
import service.impl.SupplierService;

import java.util.List;

@Service
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    private SupplierDAO supplierDAO;

    @Override
    public List<Supplier> findSupplierList() {
        return supplierDAO.findSupplierList();
    }

    @Override
    public void deleteSuppliers(Integer[] suppliersId) {
        for (Integer supplierId:suppliersId) {
            supplierDAO.deleteByPrimaryKey(supplierId);
        }
    }

    @Override
    public Supplier findSupplierById(Integer supplierId) {
        return supplierDAO.selectByPrimaryKey(supplierId);
    }

    @Override
    public void updateSupplier(Supplier supplier) {
        supplierDAO.updateByPrimaryKey(supplier);
    }

    @Override
    public void insertSupplier(Supplier supplier) {
        supplierDAO.insert(supplier);
    }

    @Override
    public List<Supplier> findSupplierListWithOption(String option) throws DataAccessException {
        return supplierDAO.findSupplierListWithOption(option);
    }
}
