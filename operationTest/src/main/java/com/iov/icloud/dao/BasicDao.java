package com.iov.icloud.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
public class BasicDao<T> {
	public static final String DEFAULT_SELECT = "defaultSelect";
	public static final String DEFAULT_SELECTONE = "defaultSelectOne";
	public static final String DEFAULT_MAPKEY = "id";
	public static final String DEFAULT_INSERT = "defaultinsert";
	public static final String DEFAULT_DELETE = "delete";
	public static final String DEFAULT_UPDATE = "update";

	@Autowired
	protected SqlSessionTemplate sqlSession;

	public SqlSession getSqlSession() {
		System.out.println("11111111111");
		return sqlSession;
		
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		System.out.println("00000000000");
		this.sqlSession = sqlSession;
	}

	/**
	 * 通过给定的实体类和语句ID获得完整的 命名空间 语句标识
	 * 
	 * @param clazz
	 *            用于指定命名空间的实体类
	 * @param stmId
	 *            语句ID
	 * @return
	 */
	protected String getStatementId(Class<T> clazz, String stmId) {
		return clazz.getName() + '.' + stmId;
	}

	/**
	 * 查询并获得实体类列表
	 * 
	 * @param clazz
	 *            用于指定命名空间的实体类
	 * @return
	 */
	public List<T> selectList(Class<T> clazz) {
		return selectList(DEFAULT_SELECT, clazz);
	}

	/**
	 * 查询并获得实体类列表
	 * 
	 * @param stmId
	 * @param clazz
	 *            用于指定命名空间的实体类
	 * @return
	 */
	public List<T> selectList(String stmId, Class<T> clazz) {
		stmId = getStatementId(clazz, stmId);
		return sqlSession.selectList(stmId);
	}

	/**
	 * 查询并获得实体类列表
	 * 
	 * @param clazz
	 *            用于指定命名空间的实体类
	 * @param parameter
	 * @return
	 */
	public List<T> selectList(Class<T> clazz, Object parameter) {
		return selectList(DEFAULT_SELECT, clazz, parameter);
	}

	/**
	 * 查询并获得实体类列表
	 * 
	 * @param stmId
	 * @param clazz
	 * @param parameter
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<T> selectList(String stmId, Class<T> clazz, Object parameter) {
		stmId = getStatementId(clazz, stmId);
		return (List<T>) sqlSession.selectList(stmId, parameter);
	}

	/**
	 * 查询并获得实体类键值对象
	 * 
	 * @param <K>
	 *            键值对象的键类型
	 * @param <V>
	 *            键值对象的值类型
	 * @param stmId
	 * @param mapKey
	 *            作为键值的实体对象属性名称
	 * @param clazz
	 * @param parameter
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public <K, V> Map<K, V> selectMap(String stmId, String mapKey,
			Class<V> clazz, Object parameter) {
		stmId = getStatementId((Class<T>) clazz, stmId);
		return sqlSession.selectMap(stmId, parameter, mapKey);
	}

	/**
	 * 查询并获得实体类键值对象
	 * 
	 * @param <K>
	 *            键值对象的键类型
	 * @param <V>
	 *            键值对象的值类型
	 * @param stmId
	 * @param mapKey
	 *            作为键值的实体对象属性名称
	 * @param clazz
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public <K, V> Map<K, V> selectMap(String stmId, String mapKey,
			Class<V> clazz) {
		stmId = getStatementId((Class<T>) clazz, stmId);
		return sqlSession.selectMap(stmId, mapKey);
	}

	/**
	 * 查询并获得实体类键值对象
	 * 
	 * @param <K>
	 *            键值对象的键类型
	 * @param <V>
	 *            键值对象的值类型
	 * @param mapKey
	 *            作为键值的实体对象属性名称
	 * @param clazz
	 * @param parameter
	 * @return
	 */
	public <K, V> Map<K, V> selectMap(String mapKey, Class<V> clazz,
			Object parameter) {
		return selectMap(DEFAULT_SELECT, mapKey, clazz, parameter);
	}

	/**
	 * 查询并获得实体类键值对象
	 * 
	 * @param <K>
	 *            键值对象的键类型
	 * @param <V>
	 *            键值对象的值类型
	 * @param clazz
	 * @param parameter
	 * @return
	 */
	public <K, V> Map<K, V> selectMap(Class<V> clazz, Object parameter) {
		return selectMap(DEFAULT_SELECT, DEFAULT_MAPKEY, clazz, parameter);
	}

	/**
	 * 查询并获得实体类键值对象
	 * 
	 * @param <K>
	 *            键值对象的键类型
	 * @param <V>
	 *            键值对象的值类型
	 * @param mapKey
	 *            作为键值的实体对象属性名称
	 * @param clazz
	 * @return
	 */
	public <K, V> Map<K, V> selectMap(String mapKey, Class<V> clazz) {
		return selectMap(DEFAULT_SELECT, mapKey, clazz);
	}

	/**
	 * 查询并获得实体类键值对象
	 * 
	 * @param <K>
	 *            键值对象的键类型
	 * @param <V>
	 *            键值对象的值类型
	 * @param clazz
	 * @return
	 */
	public <K, V> Map<K, V> selectMap(Class<V> clazz) {
		return selectMap(DEFAULT_SELECT, DEFAULT_MAPKEY, clazz);
	}

	/**
	 * 新增实体
	 * 
	 */
	@SuppressWarnings("unchecked")
	public int insert(String stmId, T parameter) {
		stmId = getStatementId((Class<T>) parameter.getClass(), stmId);
		return sqlSession.insert(stmId, parameter);
	}

	// 已测试
	public int insert(T parameter) {
		return insert(DEFAULT_INSERT, parameter);
	}

	// 已测试
	public int insert(String stmId, Class<T> clazz, T parameter) {
		stmId = getStatementId(clazz, stmId);
		return sqlSession.insert(stmId, parameter);
	}

	public int insert(Class<T> clazz, T parameter) {
		return insert(DEFAULT_INSERT, (Class<T>) clazz, parameter);
	}

	/**
	 * 跟新实体
	 * 
	 * @param stmId
	 * @param parameter
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public int update(String stmId, T parameter) {
		stmId = getStatementId((Class<T>) parameter.getClass(), stmId);
		return sqlSession.update(stmId, parameter);
	}

	public int update(T parameter) {
		return update(DEFAULT_UPDATE, parameter);
	}

	public int update(String stmId, Class<T> clazz, Object parameter) {
		stmId = getStatementId(clazz, stmId);
		return sqlSession.update(stmId, parameter);
	}

	public int update(Class<T> clazz, Object parameter) {
		return update(DEFAULT_UPDATE, clazz, parameter);
	}

	public int delete(String stmId, Class<T> clazz, Object parameter) {
		stmId = getStatementId(clazz, stmId);
		return sqlSession.delete(stmId, parameter);
	}

	public int delete(Class<T> clazz, Object parameter) {
		return delete(DEFAULT_DELETE, clazz, parameter);
	}

	/**
	 * 根据 id 查询单个实体 ----- 已测试
	 * 
	 * @param stmId
	 * @param clazz
	 * @return
	 */
	public T selectOne(Class<T> clazz, Object parameter) {
		return selectOne(DEFAULT_SELECTONE, clazz, parameter);
	}

	@SuppressWarnings("unchecked")
	public T selectOne(String stmId, Class<T> clazz, Object parameter) {
		stmId = getStatementId(clazz, stmId);
		return (T) sqlSession.selectOne(stmId, parameter);
	}

	@SuppressWarnings("unchecked")
	public Object selectOne(Class<T> clazz, String stmId, Object parameter) {
		stmId = getStatementId(clazz, stmId);
		return (T) sqlSession.selectOne(stmId, parameter);
	}

	/**
	 * 利用返回多行的语句获取第1条记录
	 * 
	 * @param <T>
	 * @param stmId
	 * @param clazz
	 * @param parameter
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public T selectOneEx(String stmId, Class<T> clazz, Object parameter) {
		stmId = getStatementId(clazz, stmId);
		RowBounds rb = new RowBounds(0, 1);
		List<T> list = sqlSession.selectList(stmId, parameter, rb);
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}

	public T selectOneEx(Class<T> clazz, Object parameter) {
		return selectOneEx(DEFAULT_SELECT, clazz, parameter);
	}

	@SuppressWarnings("unchecked")
	public T selectOneEx(String stmId, Class<T> clazz) {
		stmId = getStatementId(clazz, stmId);
		RowBounds rb = new RowBounds(0, 1);
		List<T> list = sqlSession.selectList(stmId, null, rb);
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}

	public T selectOneEx(Class<T> clazz) {
		return selectOneEx(DEFAULT_SELECT, clazz);
	}

}
