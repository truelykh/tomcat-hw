<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.time.LocalDateTime" %>
        <%@ page import="org.apache.commons.lang3.SystemUtils" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>Hello World Application</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        max-width: 600px;
                        margin: 50px auto;
                        padding: 20px;
                        line-height: 1.6;
                    }

                    input[type="text"] {
                        padding: 8px;
                        font-size: 14px;
                        width: 250px;
                    }

                    input[type="submit"] {
                        padding: 8px 16px;
                        font-size: 14px;
                        cursor: pointer;
                    }

                    .info-box {
                        background-color: #f4f4f4;
                        border-left: 4px solid #007acc;
                        padding: 12px;
                        margin-top: 20px;
                    }
                </style>
            </head>

            <body>

                <h1>Hello World Application</h1>
                <p>CI/CD: Jenkins</p>

                <form action="hello" method="GET">
                    <label for="name">Enter your name:</label><br><br>
                    <input type="text" id="name" name="name" placeholder="e.g. Rakesh" required>
                    <input type="submit" value="Say Hello">
                </form>

                <div class="info-box">
                    <strong>Server Information:</strong>
                    <ul>
                        <li>OS: <%= SystemUtils.OS_NAME %>
                        </li>
                        <li>Java Version: <%= SystemUtils.JAVA_VERSION %>
                        </li>
                        <li>Server Time: <%= LocalDateTime.now() %>
                        </li>
                    </ul>
                </div>

            </body>

            </html>