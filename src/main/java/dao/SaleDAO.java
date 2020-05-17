package dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import pojo.Sale;
import pojo.SaleCustom;

import java.util.List;

/**
 * SaleDAO继承基类
 */
@Repository
public interface SaleDAO extends MyBatisBaseDao<Sale, Integer> {
    public List<Sale> findSaleList()throws DataAccessException;

    public List<SaleCustom> findSaleCustomList() throws DataAccessException;
}