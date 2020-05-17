package dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import pojo.Supplier;
import pojo.Supplier;

import java.util.List;

/**
 * SupplierDAO继承基类
 */
@Repository
public interface SupplierDAO extends MyBatisBaseDao<Supplier, Integer> {
    public List<Supplier> findSupplierList()throws DataAccessException;

    public List<Supplier>findSupplierListWithOption(String option) throws DataAccessException;
}