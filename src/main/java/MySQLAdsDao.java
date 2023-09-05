import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) {
        initializeConnection(config);
    }

    private void initializeConnection(Config config) {
        try {
            String username = config.getUser();
            String password = config.getPassword();
            String url = config.getUrl();

            this.connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
//        the list goes in here!
        return null;
    }
    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
