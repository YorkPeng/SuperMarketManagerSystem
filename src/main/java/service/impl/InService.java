package service.impl;

import org.springframework.dao.DataAccessException;
import pojo.In;
import pojo.InCustom;

import java.util.List;

public interface InService {
    public List<In> findInList()throws DataAccessException;

    public void deleteIns(Integer[] insId)throws DataAccessException;

    public In findInById(Integer inId)throws DataAccessException;

    public void updateIn(In in)throws DataAccessException;

    public void insertIn(In in)throws DataAccessException;

    public List<InCustom> findInCustomList() throws DataAccessException;
}
