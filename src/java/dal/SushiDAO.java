package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Sushi;

public class SushiDAO {

    /**
     * Get information about shop
     *
     * @param id
     * @return a first item in Sushi table Status : Tested
     */
    public Sushi getOne(int id) throws Exception {
        String query = "SELECT * FROM Sushi WHERE Id = ?;";
        try (Connection con = MSSQLConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Sushi sushi = new Sushi(
                        rs.getInt(1),
                        rs.getString(2),
                        MSSQLConnection.getPhotoPath() + rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                );
                return sushi;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return null;
    }
    
    public static void main(String[] args) throws Exception {
        System.out.println(new SushiDAO().getOne(4).toString());
    }

    /**
     * Count total sushi record in Sushi table.
     *
     * @return number of sushi Status: Tested
     */
    public int totalSushi() throws Exception {
        String query = "SELECT COUNT(Id) FROM Sushi";
        int total = 0;
        try (Connection connection = MSSQLConnection.getConnection();
                PreparedStatement ps = connection.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt(1);
            }
            return total;
        } catch (SQLException e) {
            System.out.println(e);
            e.printStackTrace();
        }
        return -1;
    }

    public ArrayList<Sushi> getListByIndex(int start, int end) throws Exception {
        String query = "SELECT * FROM (\n"
                + "SELECT *, ROW_NUMBER() OVER (ORDER BY Id) AS RowNum FROM Sushi s\n"
                + ") AS MyDerivedTable WHERE MyDerivedTable.RowNum BETWEEN ? AND ?;";
        ArrayList<Sushi> listSushi = new ArrayList<Sushi>();
        try (Connection con = MSSQLConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, start);
            ps.setInt(2, end);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Sushi sushi = new Sushi(
                        rs.getInt(1),
                        rs.getString(2),
                        MSSQLConnection.getPhotoPath() + rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                );
                listSushi.add(sushi);
            }
            return listSushi;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return null;
    }
}
