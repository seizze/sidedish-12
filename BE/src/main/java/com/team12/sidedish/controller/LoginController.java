package com.team12.sidedish.controller;

import com.team12.sidedish.domain.LoginToken;
import com.team12.sidedish.domain.User;
import com.team12.sidedish.service.LoginService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;


@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class LoginController {

    @Value("${github_redirect_url}")
    private String redirect_url;

    @Value("${github_client_id}")
    private String client_id;

    @Value("${github_client_secret}")
    private String client_secret;

    private static final LoginService loginService = new LoginService();

    @GetMapping("/githubLogin")
    public RedirectView githubLogin() {
        RedirectView redirectView = new RedirectView();
        String redirectUrl = loginService.getRedirectUrl(client_id, redirect_url);

        redirectView.setUrl(redirectUrl);
        return redirectView;
    }

    @GetMapping("/login")
    public RedirectView login(@PathParam("code") String code, HttpServletResponse httpServletResponse) {
        LoginToken response = loginService.getAccessToken(code, client_id, client_secret, redirect_url);
        User responseUer = loginService.getUserInfo(response.getTokenType(), response.getAccessToken());

        String jws = loginService.generateJwtToken(responseUer.getUserId());

        // create a cookie
        Cookie cookie = new Cookie("token", jws);

        //add cookie to response
        httpServletResponse.addCookie(cookie);
        RedirectView redirectView = new RedirectView();

        redirectView.setUrl("/");

        return redirectView;
    }
}
