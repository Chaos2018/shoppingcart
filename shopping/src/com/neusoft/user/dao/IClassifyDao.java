package com.neusoft.user.dao;

import com.system.dao.IDao;
import com.neusoft.user.pojo.Classify;
import org.mybatis.spring.annotation.MapperScan;

/**
 * Created by xiyem on 2017/3/22.
 */
@MapperScan
public interface IClassifyDao extends IDao<Classify> {
}
