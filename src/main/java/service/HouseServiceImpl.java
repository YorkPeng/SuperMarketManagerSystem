package service;

import dao.HouseDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import pojo.House;
import service.impl.HouseService;

import java.util.List;

@Service
public class HouseServiceImpl implements HouseService {
    @Autowired
   private HouseDAO houseDAO;
    @Override
    public List<House> findHouseList() {
        return houseDAO.findHouseList();
    }

    @Override
    public void deleteHouses(Integer[] housesId) {
        for (Integer houseId:housesId){
            houseDAO.deleteByPrimaryKey(houseId);
        }
    }

    @Override
    public House findHouseById(Integer houseId) {
        return houseDAO.selectByPrimaryKey(houseId);
    }

    @Override
    public void updateHouse(House house) {
        houseDAO.updateByPrimaryKey(house);
    }

    @Override
    public void insertHouse(House house) {
        houseDAO.insert(house);
    }

    @Override
    public List<House> findHouseListWithOption(String option) throws DataAccessException {
        return houseDAO.findHouseListWithOption(option);
    }
}
