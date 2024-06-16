package lab6.com;

import java.sql.PreparedStatement;
import java.sql.SQLException;
        
/**
 *
 * @author 
 */

public class MarathonDAO {
    
    public static int addDetail(Marathon marathon) throws ClassNotFoundException, SQLException {
        
        int result;
        
        Database.getConnection();

        String sInsertQry = "INSERT INTO marathon(icno, name, category) VALUES (?, ?, ?)";

        PreparedStatement preparedStatement = Database.getConnection().prepareStatement(sInsertQry);

        preparedStatement.setString(1, marathon.getIcNo());
        preparedStatement.setString(2, marathon.getName());
        preparedStatement.setString(3, marathon.getCategory());

        result = preparedStatement.executeUpdate();
        
        return result;

    }
}
