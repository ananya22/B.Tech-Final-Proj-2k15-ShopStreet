package Registeruser;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mailsend extends HttpServlet 
{
    String to,subject,body,from,pass;
    public void doPost(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            to=request.getParameter("to");
            subject=request.getParameter("subject");
            body=request.getParameter("body");
           HttpSession ses=request.getSession();
            from="tusharsharma75086@gmail.com";
            pass="fresher2015";
            Properties props = new Properties();
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.smtp.socketFactory.port", "465");
	    props.put("mail.smtp.socketFactory.class",
	 	"javax.net.ssl.SSLSocketFactory");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.port", "465");
	    Session session = Session.getInstance(props,
		new javax.mail.Authenticator() {
                                    protected PasswordAuthentication 
                                
                                        getPasswordAuthentication() {
                            return new PasswordAuthentication(from,pass);
				}
			});
 
		try {
 
		Message message = new MimeMessage(session);                      
		message.setFrom(new InternetAddress(from));
		message.setRecipients(Message.RecipientType.TO,
		InternetAddress.parse(to));
                   		message.setSubject(subject);
	
                                message.setText(body);
                               
                   		Transport.send(message);
                    	} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
           
            ses.setAttribute("sent", "Message Sent");
           response.sendRedirect("Admin/Pages/Index.jsp");
        } catch(Exception e)
        {            
out.println(e);
        }
    }

}
