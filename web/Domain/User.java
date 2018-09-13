package Domain;

import java.util.Objects;

/**
 * @author William Garneau
 */
public class User {
    private final String firstName;
    private final String lastName;
    private final String email;
    private final String socialId;
    
    public User(String firstName, String lastName, String email, String socialId) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.socialId = socialId;
    }
    
    public String getName() {
        return String.format("%s %s", getFirstName(), getLastName());
    }
    
    public String getFirstName() {
        return firstName;
    }
    
    public String getLastName() {
        return lastName;
    }
    
    public String getEmail() {
        return email;
    }
    
    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof User)) {
            return false;
        }
        User other = (User)obj;
        return Objects.equals(firstName, other.firstName) &&
               Objects.equals(lastName, other.lastName) &&
               Objects.equals(email, other.lastName) &&
               Objects.equals(socialId, other.socialId);
    }
    
    @Override
    public String toString() {
        return getName();
    }
}
