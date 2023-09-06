import org.mindrot.jbcrypt.BCrypt;

public class testpass {
    public static void main(String[] args) {
        String plainTextPassword = "password:)";
        // calling the lib and storing in a new var
        String hashedPassword = BCrypt.hashpw(plainTextPassword, BCrypt.gensalt());
        System.out.println(hashedPassword);
        // $2a$10$r3NiujCCXpP79.NLwH.5H.MkRrIigpWYNDPofzqWoVQnFEMwv1XfG encrypting passwords.

        boolean passwordsMatch = BCrypt.checkpw("test", hashedPassword);
        System.out.println(passwordsMatch); //Falls bc doesnt match
    }
}
