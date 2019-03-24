package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Menu;

public class MenuDAO {

    public int total() throws Exception {
        String query = "SELECT COUNT(Id) FROM Menu;";
        try (Connection connection = MSSQLConnection.getConnection();
                PreparedStatement ps = connection.prepareStatement(query);) {
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return -1;
    }

    public ArrayList<Menu> getListByIndex(int start, int end) throws Exception {
        String query = "SELECT * FROM (\n"
                + "SELECT *, ROW_NUMBER() OVER (ORDER BY Id) AS RowNum FROM Menu s\n"
                + ") AS MyDerivedTable WHERE MyDerivedTable.RowNum BETWEEN ? AND ?;";
        ArrayList<Menu> listMenu = new ArrayList<Menu>();
        Connection con = MSSQLConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, start);
            ps.setInt(2, end);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Menu menu = new Menu(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                );
                listMenu.add(menu);
            }
            return listMenu;
        } catch (Exception ex) {
            throw ex;
        } finally {

        }
    }

}
