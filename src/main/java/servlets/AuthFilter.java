package servlets;

import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;
import utils.UserCheck;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Objects;

@WebFilter(urlPatterns = "/*")
public class AuthFilter implements Filter {



    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String userToken = request.getParameter("user");
        String type = request.getParameter("type");


        if (Objects.equals(type, "checkAreaRequest")){

            UserCheck userCheck = new UserCheck();
            boolean result = userCheck.search(userToken);
            if (result && userToken != null && !userToken.isEmpty()){
                filterChain.doFilter(request, response);
            } else {
                response.setStatus(HttpServletResponse.SC_FORBIDDEN);
//                RequestDispatcher dispatcher = request.getRequestDispatcher("/notAllowed.jsp");
//                dispatcher.forward(request, response);
            }
        } else {
              filterChain.doFilter(request, response);
//            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/notAllowed.jsp");
//            requestDispatcher.forward(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
