package Authentication;
/**
 * @author William Garneau
 */
public interface Authenticable {
    default boolean matches(String plainPassword) {
        return getPassword().matches(plainPassword);
    }
    
    Password getPassword();
}
