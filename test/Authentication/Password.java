package Authentication;

import java.util.Objects;

/**
 * @author William Garneau
 */
public class Password {
    private final String password;
    
    public Password(String password) {
        this.password = password;
    }
    
    public boolean matches(String plainText) {
        return this.matches(plainText);
    }
    
    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Password)) {
            return false;
        }
        Password other = (Password)obj;
        return Objects.equals(this.password, other.password);
    }
}
