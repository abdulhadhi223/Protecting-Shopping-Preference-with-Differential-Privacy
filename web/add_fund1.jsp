<%-- 
    Document   : set_attribute
    Created on : Sep 29, 2020, 2:15:45 PM
    Author     : Lenovo
--%>

<%@page import="Networks.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String acc_no = request.getParameter("acc_no");
    String amount = request.getParameter("amount");
    String amt = request.getParameter("amt");
    
    int amount1 = Integer.parseInt(amount);
    int amt1 = Integer.parseInt(amt);
    int amtt = amount1 + amt1;

    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();

    try {
        int i = sto.executeUpdate("UPDATE bank_account SET amount='"+ amtt +"' WHERE acc_no='" + acc_no + "' ");
        System.out.println("Test print Account Number ==" + acc_no);
        if (i != 0) {
            System.out.println("success");
            response.sendRedirect("Account_details.jsp?Funds_added");
        } else {
            System.out.println("failed");
            response.sendRedirect("Account_details.jsp?Failed");

        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
