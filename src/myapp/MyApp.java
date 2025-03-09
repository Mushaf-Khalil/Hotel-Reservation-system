package myapp;

import myapp.Login.Login_Frame;
/**
 *
 * @author mushaf khalil
 */
public class MyApp {

    /**
     *
     */
    // Corrected the DB_URL by removing the invalid "String url ="
    public static final String DB_URL = "jdbc:mysql://localhost/hotel_management_system?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    public static final String USER = "root"; // Replace with your MySQL username
    public static final String PASS = "tiger"; // Replace with your MySQL password

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Login_Frame start = new Login_Frame();
        start.setLocationRelativeTo(null);
        start.setVisible(true);
    }
}
