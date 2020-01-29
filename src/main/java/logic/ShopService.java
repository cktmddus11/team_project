package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;

@Service // @Component + service ���
public class ShopService {
	@Autowired
	private UserDao userDao;

	public boolean selectOne(String kemail) {
		return userDao.selectOne(kemail);
	}
}
