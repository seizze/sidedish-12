package com.team12.sidedish.controller;

import com.team12.sidedish.domain.LoginToken;
import com.team12.sidedish.dto.ResponseDto;
import com.team12.sidedish.service.LoginService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import javax.websocket.server.PathParam;

@RestController
public class LoginController {

    private static final LoginService loginService = new LoginService();

    @GetMapping("/githubLogin")
    public RedirectView githubLogin() {
        RedirectView redirectView = new RedirectView();
        String redirectUrl = loginService.getRedirectUrl();
        redirectView.setUrl(redirectUrl);
        return redirectView;
    }

    @GetMapping("/login")
    public ResponseDto<String> login(@PathParam("code") String code) {
        LoginToken response = loginService.getAccessToken(code);
        return ResponseDto.OK(response.getAccessToken());
    }
}
