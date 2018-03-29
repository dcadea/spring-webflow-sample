package club.cheapok.swf.service;

import club.cheapok.swf.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {

    private final List<User> users;

    public UserService() {
        this.users = new ArrayList<>();
        this.users.add(new User("user", "pass"));
    }

    public boolean userExists(final User user) {
        return this.users.contains(user);
    }

    public String createUser(final User user) {
        if (this.users.stream().noneMatch(u -> u.getName().equals(user.getName()))) {
            this.users.add(user);
            return "success";
        }

        return "exists";
    }
}
