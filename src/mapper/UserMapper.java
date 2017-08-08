package mapper;
import entities.User;
public interface UserMapper {
    public User selectUser(User user);
    public int insertUser(User user);
}
