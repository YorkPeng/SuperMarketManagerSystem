package service;

import dao.ItemDAO;
import dao.SaleDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import pojo.Sale;
import pojo.SaleCustom;
import service.impl.SaleService;

import java.util.List;

@Service
public class SaleServiceImpl  implements SaleService {

    @Autowired
    private SaleDAO saleDAO;

    @Autowired
    private ItemDAO itemDAO;
    @Override
    public List<Sale> findSaleList() {
        return saleDAO.findSaleList();
    }

    @Override
    public void deleteSales(Integer[] salesId) {
        for (Integer saleId:salesId){
            saleDAO.deleteByPrimaryKey(saleId);
        }
    }

    @Override
    public Sale findSaleById(Integer saleId) {
        return saleDAO.selectByPrimaryKey(saleId);
    }

    @Override
    public void updateSale(Sale sale) {
        saleDAO.updateByPrimaryKey(sale);
    }

    @Override
    public void insertSale(Sale sale) {
        saleDAO.insert(sale);
    }

    @Override
    public List<SaleCustom> findSaleCustomList() throws DataAccessException {
        return saleDAO.findSaleCustomList();
    }
}
