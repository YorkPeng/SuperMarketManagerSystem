package service.impl;

import org.springframework.dao.DataAccessException;
import pojo.House;

import java.util.List;

public interface HouseService {
    public List<House> findHouseList()throws DataAccessException;

    public void deleteHouses(Integer[] HousesId)throws DataAccessException;

    public House findHouseById(Integer HouseId)throws DataAccessException;

    public void updateHouse(House House)throws DataAccessException;

    public void insertHouse(House House)throws DataAccessException;

    public List<House> findHouseListWithOption(String option) throws DataAccessException;
}
