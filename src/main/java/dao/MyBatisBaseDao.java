package dao;

import java.io.Serializable;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;

/**
 * DAO公共基类，由MybatisGenerator自动生成请勿修改
 * @param <Model> The Model Class 这里是泛型不是Model类
 * @param <PK> The Primary Key Class 如果是无主键，则可以用Model来跳过，如果是多主键则是Key类
 */
public interface MyBatisBaseDao<Model, PK extends Serializable> {
    int deleteByPrimaryKey(PK id) throws DataAccessException;

    int insert(Model record)throws DataAccessException;

    int insertSelective(Model record)throws DataAccessException;

    Model selectByPrimaryKey(PK id)throws DataAccessException;

    int updateByPrimaryKeySelective(Model record)throws DataAccessException;

    int updateByPrimaryKey(Model record)throws DataAccessException;
}