package org.popkit.appkit.common.adapter;

import org.popkit.appkit.common.annotation.AuthorityPolicy;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Author: aborn.jiang
 * Email : aborn.jiang AT foxmail.com
 * Date  : 4/16/15
 * Time  : 11:20 PM
 */
public class AuthInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (handler.getClass().isAssignableFrom(HandlerMethod.class)) {
            AuthorityPolicy authorityPolicy = ((HandlerMethod) handler).getMethodAnnotation(AuthorityPolicy.class);
            if (authorityPolicy == null || authorityPolicy.scene().equalsIgnoreCase("null")) {
                return true;
            } else {
                return false;
            }
        } else {
            return true;
        }
    }
}