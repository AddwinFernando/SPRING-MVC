package Database;

import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDb {
    private static Connection con = DbConnection.getConection();
    private String SELECT_USER = "SELECT name, password FROM user WHERE name=? and password=?";

    private String SELECT_ALL = "SELECT * FROM user";
    private String INSERT_USER = "INSERT INTO user (id,name,password,gender,language,country) VALUES (?,?,?,?,?,?);";

    public Boolean validate(String name, String password) {
        Boolean val = false;
        try {
            PreparedStatement ps = con.prepareStatement(SELECT_USER);
            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            val = rs.next();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return val;
    }

    public ArrayList<User> getUsers() {
        ArrayList<User> users = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(SELECT_ALL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                User user = new User();
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setGender(rs.getString("gender"));
                user.setLanguage(rs.getString("language"));
                user.setCountry(rs.getString("country"));
                users.add(user);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return users;
    }

    public void registerUser(String name,String password,String gender,String language,String country){
        try {
            int id = (int) (Math.random()*100);
            PreparedStatement ps = con.prepareStatement(INSERT_USER);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, password);
            ps.setString(4, gender);
            ps.setString(5, language);
            ps.setString(6, country);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
