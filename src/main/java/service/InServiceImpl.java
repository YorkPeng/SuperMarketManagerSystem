package service;

import dao.InDAO;
import dao.ItemDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import pojo.In;
import pojo.InCustom;
import service.impl.InService;

import java.util.List;

@Service
public class InServiceImpl implements InService {

    @Autowired
    private InDAO inDAO;
    @Autowired
    private ItemDAO itemDAO;

    @Override
    public List<In> findInList() {
        return inDAO.findInList();
    }

    @Override
    public void deleteIns(Integer[] insId) {
        for (Integer inId : insId){
            inDAO.deleteByPrimaryKey(inId);
        }
    }

    @Override
    public In findInById(Integer inId) {
        return inDAO.selectByPrimaryKey(inId);
    }

    @Override
    public void updateIn(In in) {
        inDAO.updateByPrimaryKey(in);
    }

    @Override
    public void insertIn(In in) {
        inDAO.insert(in);
    }

    @Override
    public List<InCustom> findInCustomList() throws DataAccessException {
        return inDAO.findInCustomList();
    }
}
