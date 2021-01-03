package com.springmvc.intercepter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginIntercepter implements HandlerInterceptor {
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("执行后，返回前执行....");
    }

    //在处理过程中进行拦截
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") != null) {
            return true;
        } else {
            String sd=request.getRequestURI();
            switch (request.getRequestURI()) {
                case "/verifyAccount":
                case "/changePassword":
                case "/dictionary/getData":
                    return true;
            }
            if (request.getRequestURI().equals("/findpasswordPage"))
                response.sendRedirect("/findpassword");
            else
                response.sendRedirect("/login"); //登录
            return false;
        }
    }
}
