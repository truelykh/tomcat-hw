package com.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        if (StringUtils.isBlank(name)) {
            name = "World";
        } else {
            name = StringUtils.capitalize(name.trim());
        }

        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head><title>Hello Response</title></head>");
        out.println("<body style='font-family: sans-serif; max-width: 600px; margin: 50px auto; line-height: 1.6;'>");
        out.println("<h2>Hello, " + name + "!</h2>");
        out.println("<p>Current Server Time: <strong>" + LocalDateTime.now() + "</strong></p>");
        out.println("<p><a href='index.jsp'>&larr; Back</a></p>");
        out.println("</body>");
        out.println("</html>");
    }
}
