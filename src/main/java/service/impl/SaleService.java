package service.impl;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import pojo.Sale;
import pojo.SaleCustom;

import java.util.List;

public interface SaleService {
    public List<Sale> findSaleList()throws DataAccessException;

    public void deleteSales(Integer[] salesId)throws DataAccessException;

    public Sale findSaleById(Integer saleId)throws DataAccessException;

    public void updateSale(Sale sale)throws DataAccessException;

    public void insertSale(Sale sale)throws DataAccessException;

    public List<SaleCustom> findSaleCustomList() throws DataAccessException;
    
}
