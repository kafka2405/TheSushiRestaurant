package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.AboutShop;

public class AboutShopDAO {
    /**
     * Get information about shop
     * @return a object contain all information about sushi shop 
     * Status : Tested
     */
    public AboutShop getInformation() throws Exception {
        String query = "SELECT * FROM AboutShop;";
        try (Connection con = MSSQLConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                AboutShop aboutShop = new AboutShop(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        MSSQLConnection.getPhotoPath() + rs.getString(6)
                );
                return aboutShop;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return null;
    }
}
