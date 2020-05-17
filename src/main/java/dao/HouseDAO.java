package dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import pojo.House;

import java.util.List;

/**
 * HouseDAO继承基类
 */
@Repository
public interface HouseDAO extends MyBatisBaseDao<House, Integer> {
    public List<House> findHouseList() throws DataAccessException;

    public List<House>findHouseListWithOption(String option) throws DataAccessException;
}