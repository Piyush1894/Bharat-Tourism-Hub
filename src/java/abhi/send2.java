package abhi;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Properties;

public class send2 {
    private int random;
    private String msgSubject = "";
    private String msgText = "";
    private String userName;   // Receiver Mail (User Mail)

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    final String PASSWORD = "tvgl mnlb tvqq ejdw";  // Password of the Google (Gmail) account
    final static String SENDER = "abhishekh0456@gmail.com";  // Sender Gmail address

    public static void main(String[] args) {
        send2 email = new send2();
        // Sending test email
        int otp = email.otpGenerate();

        email.createAndSendEmail(SENDER, "Bharat Tourism Hub", "Dear user,\nThe one-time OTP to reset your password at (Password Reset) is " + otp + ".\n\nThis OTP will expire in 5 minutes.");
    }

    public void createAndSendEmail(String emailAddressTo, String msgSubject, String msgText) {
        this.msgSubject = msgSubject;
        this.msgText = msgText;
        sendEmailMessage();
    }

    private void sendEmailMessage() {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SENDER, PASSWORD);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(SENDER)); // Set from address of the email
            message.setContent(msgText, "text/html"); // Set content type of the email

            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(userName));

            message.setSubject(msgSubject); // Set email message subject
            Transport.send(message); // Send email message

            System.out.println("Sent email successfully!");

        } catch (MessagingException e) {
            System.out.println(e);
        }
    }

    public int otpGenerate() {
        random = (int) (Math.random() * 999999);
        System.out.println("Random num is: " + random);
        return random;
    }

    public boolean validateOtp(int r) {
        return random == r;
    }
}
