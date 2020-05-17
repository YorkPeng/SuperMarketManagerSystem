package dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import pojo.House;
import pojo.In;
import pojo.InCustom;

import java.util.List;

/**
 * InDAO继承基类
 */
@Repository
public interface InDAO extends MyBatisBaseDao<In, Integer> {
    public List<In> findInList()throws DataAccessException;

    public List<InCustom> findInCustomList() throws DataAccessException;
}