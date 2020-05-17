package service;

import dao.ItemDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import pojo.Item;
import pojo.ItemCustom;
import service.impl.ItemService;

import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemDAO itemDAO ;

    /**
     *
     * @return
     */
    @Override
    public List<Item> findItemList() {
        return itemDAO.findItemsList();
    }

    @Override
    public void deleteItems(Integer[] itemsId) {
        for (Integer itemId:itemsId) {
            itemDAO.deleteByPrimaryKey(itemId);
        }
    }

    @Override
    public Item findItemById(Integer itemId) {
        return itemDAO.selectByPrimaryKey(itemId);
    }

    @Override
    public void updateItem(Item item) {
        itemDAO.updateByPrimaryKey(item);
    }

    @Override
    public void insertItem(Item item) {
       itemDAO.insert(item);
    }

    @Override
    public Integer countTotalItem() throws DataAccessException {
        return itemDAO.totalNumber();
    }

    @Override
    public List<ItemCustom> findItemVoList() throws DataAccessException {
        return itemDAO.findItemVoList();
    }

    @Override
    public List<ItemCustom> findItemWithOption(String option) throws DataAccessException {
        return itemDAO.findItemListWithOption(option);
    }
}
