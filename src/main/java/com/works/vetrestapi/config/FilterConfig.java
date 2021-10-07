package com.works.vetrestapi.config;

import com.works.vetrestapi.entities.Log;
import com.works.vetrestapi.services.UserService;
import org.springframework.context.annotation.Configuration;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Configuration
public class FilterConfig implements Filter {

    final UserService userService;

    public FilterConfig(UserService userService) {
        this.userService = userService;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse res = (HttpServletResponse) servletResponse;

       userService.info(req,res,new Log());

        filterChain.doFilter(req, res);
    }


}