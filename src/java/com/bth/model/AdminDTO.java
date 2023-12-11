package com.bth.model;

import com.bth.services.GetConnection;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

public class AdminDTO {
  private String msgSubject = "";
    private String msgText = "";
    private String userName; 
    final String PASSWORD = "tvgl mnlb tvqq ejdw";  // Password of the Google (Gmail) account
    final static String SENDER = "abhishekh0456@gmail.com";  // Sender Gmail address
    public boolean login() {

        return false;
    }

    public List<UserDAO> allUser() {
        List<UserDAO> ludao = new ArrayList<>();
        Connection con = null;

        try {
            con = GetConnection.getConnection();

            if (con != null) {
                String sql = "SELECT * FROM users";
                try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

                    while (rs.next()) {
                        UserDAO udao = new UserDAO();

                        udao.setId(rs.getInt("id"));
                        udao.setName(rs.getString("name"));
                        udao.setEmail(rs.getString("email"));
                        udao.setPassword(rs.getString("password"));
                        udao.setMobile(rs.getString("mobile"));
                        udao.setImage(rs.getString("image"));
                        udao.setStatus(rs.getString("status"));
                        udao.setAddress(rs.getString("address"));

                        ludao.add(udao);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ludao;
    }

    public List<VendorDAO> allVendor() {
        List<VendorDAO> lvdao = new ArrayList<>();
        Connection con = null;

        try {
            con = GetConnection.getConnection();

            if (con != null) {
                String sql = "SELECT * FROM vendor";
                try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

                    while (rs.next()) {
                        VendorDAO vdao = new VendorDAO();
                        vdao.setName(rs.getString("name"));
                        vdao.setEmail(rs.getString("email"));
                        vdao.setPassword(rs.getString("password"));
                        vdao.setMobile(rs.getString("mobile"));
                        vdao.setStatus(rs.getString("status"));
                        vdao.setType(rs.getString("type"));
                        lvdao.add(vdao);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lvdao;
    }

    public List<VendorDAO> busVendor() {
        List<VendorDAO> lvdao = new ArrayList<>();
        Connection con = null;

        try {
            con = GetConnection.getConnection();

            if (con != null) {
                String sql = "SELECT * FROM vendor WHERE type = 'Bus'";
                try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

                    while (rs.next()) {
                        VendorDAO vdao = new VendorDAO();
                        vdao.setName(rs.getString("name"));
                        vdao.setEmail(rs.getString("email"));
                        vdao.setPassword(rs.getString("password"));
                        vdao.setMobile(rs.getString("mobile"));
                        vdao.setStatus(rs.getString("status"));
                        vdao.setType(rs.getString("type"));
                        lvdao.add(vdao);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lvdao;
    }

    public List<VendorDAO> hotelVendor() {
        List<VendorDAO> lvdao = new ArrayList<>();
        Connection con = null;

        try {
            con = GetConnection.getConnection();

            if (con != null) {
                String sql = "SELECT * FROM vendor WHERE type = 'Hotel'";
                try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

                    while (rs.next()) {
                        VendorDAO vdao = new VendorDAO();
                        vdao.setName(rs.getString("name"));
                        vdao.setEmail(rs.getString("email"));
                        vdao.setPassword(rs.getString("password"));
                        vdao.setMobile(rs.getString("mobile"));
                        vdao.setStatus(rs.getString("status"));
                        vdao.setType(rs.getString("type"));
                        lvdao.add(vdao);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lvdao;
    }

    public List<VendorDAO> request() {
        List<VendorDAO> lvdao = new ArrayList<>();
        Connection con = null;

        try {
            con = GetConnection.getConnection();

            if (con != null) {
                String sql = "SELECT * FROM vendor WHERE status = 'new'";
                try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

                    while (rs.next()) {
                        VendorDAO vdao = new VendorDAO();
                        vdao.setId(rs.getInt("id"));
                        vdao.setName(rs.getString("name"));
                        vdao.setEmail(rs.getString("email"));
                        vdao.setPassword(rs.getString("password"));
                        vdao.setMobile(rs.getString("mobile"));
                        vdao.setStatus(rs.getString("status"));
                        vdao.setType(rs.getString("type"));
                        lvdao.add(vdao);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lvdao;
    }

    public static int getUserRowCount() {
        int rowCount = 0;
        Connection con = null;
        try {
            con = GetConnection.getConnection();
            if (con != null) {
                String sql = "SELECT COUNT(*) as rowCount FROM users";
                try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        rowCount = rs.getInt("rowCount");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowCount;
    }

    public static int getVendorRowCount() {
        int rowCount = 0;
        Connection con = null;
        try {
            con = GetConnection.getConnection();
            if (con != null) {
                String sql = "SELECT COUNT(*) as rowCount FROM vendor";
                try (PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        rowCount = rs.getInt("rowCount");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowCount;
    }

    public boolean vendorApruve(int id,String email) {
        boolean b = false;
        System.out.println("vendorApruve");
        boolean c=this.sendEmailMessage(email);
        if(c){
        Connection con = null;

        try {
            con = GetConnection.getConnection();

            if (con != null) {
                String sql = "update vendor set status='unblock' where id=?";
                           
                        PreparedStatement ps = con.prepareStatement(sql); 
                        ps.setInt(1, id);
                         if(ps.executeUpdate()>0){
                          b=true;
                         }
                     
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        }
        return b;
    }
    
  private boolean sendEmailMessage(String recipient) {
      
      System.out.println("sendEmailMessage");
    boolean success = false;

    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");

    Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(SENDER, PASSWORD);
        }
    });

    try {
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(SENDER));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
        message.setSubject("Your Apruve Approval");
        
        // Customize the email body
        String approvalMessage = "Dear User,<br><br>"
                + "Your Apruve request has been approved by the admin.<br>"
                + "Thank you for your registration.<br><br>"
                + "Best Regards,<br>"
                + "Admin";

        message.setContent(approvalMessage, "text/html");

        Transport.send(message);
        System.out.println("Email sent successfully!");
        success = true;
    } catch (MessagingException e) {
        e.printStackTrace();
    }

    return success;
}
    public boolean m(int id,String email) {
        boolean b=false;
        System.out.println("ksmhnidskjfchnksjdfhbkuefhsgifuiuweyriuweyr");  
    boolean d=this.vendorApruve(id,email);
      if(d){b=true;}
     return b;
    }

}
