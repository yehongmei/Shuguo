package service;
import entities.User;
import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;
   /* 登录功能：查询用户名和密码*/
    public  User selectUser(User user){
        return  userMapper.selectUser(user);
    }
    /*注册功能：插入用户*/
    public  boolean insertUser(User user){
        return  userMapper.insertUser(user)>0;
    }
}

