package dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import pojo.*;

import java.util.List;

/**
 * ItemDAO继承基类
 */
@Repository
public interface ItemDAO extends MyBatisBaseDao<Item, Integer> {

    public List<Item> findItemsList()throws DataAccessException;

    public List<ItemCustom> findItemListWithOption(String option) throws DataAccessException;

    public Integer totalNumber()throws DataAccessException;

    public List<ItemCustom> findItemVoList() throws DataAccessException;
}