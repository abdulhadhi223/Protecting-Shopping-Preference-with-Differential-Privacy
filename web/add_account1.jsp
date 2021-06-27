<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String name = request.getParameter("name");
    String acc_no = request.getParameter("acc_no");
    String bank_name = request.getParameter("bank_name");
    String branch = request.getParameter("branch");
    String amount = request.getParameter("amount");

    int amt = Integer.parseInt(amount);

    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    try {
        ResultSet rs = st1.executeQuery("Select * from bank_account where acc_no ='" + acc_no + "'");
        if (rs.next()) {
            response.sendRedirect("Add_account.jsp?Acc_number_already_exists");
        } else {

            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);

            int i = st.executeUpdate("insert into bank_account (uname, acc_no, bank_name, branch, amount, time) values ('" + name + "','" + acc_no + "','" + bank_name + "','" + branch + "','" + amt + "','" + time + "')");
            if (i != 0) {
                System.out.println("Account Added Successfully");
                response.sendRedirect("Add_account.jsp?Account_added");
            } else {
                response.sendRedirect("Add_account.jsp?failed");
                System.out.println("failed...");
            }
        }
        }catch (Exception ex) {
        ex.printStackTrace();
    }

%>