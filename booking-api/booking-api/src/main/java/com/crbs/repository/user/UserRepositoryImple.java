package com.crbs.repository.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.crbs.model.User;
import com.crbs.security.PasswordEncoding;

@Repository
public class UserRepositoryImple implements UserRepository {

	PasswordEncoding passwordEncoding = new PasswordEncoding();

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public int insertUser(User user) {
		return this.jdbcTemplate.update(UserSQLquery.INSERT_USER, user.getId(), user.getName(),
				passwordEncoding.encode(user.getPassword()), user.getIsadmin(), user.getPhonenumber());
	}

	@Override
	public int deleteUser(String id) {
		return this.jdbcTemplate.update(UserSQLquery.DELETE_USER, id);
	}

	@Override
	public int updateUser(String id, User user) {
		return this.jdbcTemplate.update(UserSQLquery.UPDATE_USER, user.getPhonenumber(), id);
	}

	@Override
	public String findById(String id) {
		return this.jdbcTemplate.queryForObject(UserSQLquery.FINDBYID, String.class, id);
	}
	
	@Override
	public User findUserData(String id) {
		return this.jdbcTemplate.queryForObject(UserSQLquery.SELECT_USER_DATA, new UserSelectMapper(), id);
	}
}
