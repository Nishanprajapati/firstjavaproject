package com.rideease.utills;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;




public class EmailSender {
   
    public static void bookEmail(String useremail){
        // Recipient's email ID needs to be mentioned.
       String to ="abinash201603@ncit.edu.np";

       // Sender's email ID needs to be mentioned
       String from = "info.rideease@gmail.com";

       // sending email from through gmails smtp
       String host = "smtp.gmail.com";

       // Get system properties
       Properties properties = System.getProperties();

       // Setup mail server
       properties.put("mail.smtp.host", host);
       properties.put("mail.smtp.port", "587");
       properties.put("mail.smtp.ssl.enable", "false");
       properties.put("mail.smtp.auth", "true");

       // Get the Session object.// and pass username and password
       Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

           @Override
           protected PasswordAuthentication getPasswordAuthentication() {

               return new PasswordAuthentication("info.rideease@gmail.com", "rideease123");

           }

       });

       // Used to debug SMTP issues
       session.setDebug(true);

       try {
           // Create a default MimeMessage object.
           MimeMessage message = new MimeMessage(session);

           // Set From: header field of the header.
           message.setFrom(new InternetAddress(from));

           // Set To: header field of the header.
           message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

           // Set Subject
           message.setSubject("Welcome ABI");

           // actual message
           message.setContent(
             "<h4>Dear,abi"
                     +"<br>Thank you for choosing RideEase made by ANA .Now welcome to Rideease family."
                  
                
                     + "<br> Regards,<br>RideEase</h4>",
            "text/html"
           
           );

           
           // Send message
           Transport.send(message);
           
       } catch (MessagingException mex) {
           mex.printStackTrace();
       }

   }
}







   