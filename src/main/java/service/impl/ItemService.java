package service.impl;

import org.springframework.dao.DataAccessException;
import pojo.Customer;
import pojo.Item;
import pojo.ItemCustom;


import java.util.List;

public interface ItemService {

    public List<Item> findItemList()throws DataAccessException;

    public void deleteItems(Integer[] itemsId)throws DataAccessException;

    public Item findItemById(Integer itemId)throws DataAccessException;

    public void updateItem(Item item)throws DataAccessException;

    public void insertItem(Item Item)throws DataAccessException;

    public Integer countTotalItem()throws DataAccessException;

    public List<ItemCustom> findItemVoList() throws DataAccessException;

    public List<ItemCustom> findItemWithOption (String option) throws DataAccessException;
}
