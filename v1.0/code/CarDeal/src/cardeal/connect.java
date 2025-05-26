/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cardeal;

import java.sql.*;
import javax.swing.*;
public class connect {
    Connection conn= null;
    public static Connection connectDb(){
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root"); // OPOU ROOT ROOT, USERNAME PASSWORD, LOCALHOST= HOST :3306 = PORT
    JOptionPane.showMessageDialog(null,"Connected to database succesfully"); 
    return conn;
    }catch(Exception e){
        JOptionPane.showMessageDialog(null,e);
        return null;
    }
}

}

