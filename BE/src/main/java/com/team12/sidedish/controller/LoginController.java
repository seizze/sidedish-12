package com.team12.sidedish.controller;

import com.team12.sidedish.domain.LoginToken;
import com.team12.sidedish.domain.User;
import com.team12.sidedish.dto.ResponseDto;
import com.team12.sidedish.service.LoginService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
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
    public ResponseDto<String> login(@PathParam("code") String code, HttpServletResponse httpServletResponse) {
        LoginToken response = loginService.getAccessToken(code);
        User responseUer = loginService.getUserInfo(response.getTokenType(), response.getAccessToken());

        String jws = loginService.generateJwtToken(responseUer.getUserId());
        httpServletResponse.setHeader("Authorization", jws);
//        토큰을 이렇게 주면 받을 수 있나??
        return ResponseDto.OK("로그인 성공! 토큰 발급!");
    }
}
