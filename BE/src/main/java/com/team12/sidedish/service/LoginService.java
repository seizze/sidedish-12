package com.team12.sidedish.service;

import com.team12.sidedish.domain.LoginToken;
import org.springframework.web.client.RestTemplate;

public class LoginService {
    static final String GITHUB_URL = "https://github.com/login/oauth";
    static final String CLIENT_ID = "9562b1261ca3c697df0c";
    static final String CLIENT_SECRET = "a42a93d7c1a4c4ef7abcd59ba0e28daa6a137544";
    static final String REDIRECT_URL = "http://localhost:8080/login";

    public LoginToken getAccessToken(String code) {

        String requestUrl = String.format("%s/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s", GITHUB_URL, CLIENT_ID, CLIENT_SECRET, REDIRECT_URL, code);

        RestTemplate restTemplate = new RestTemplate();
        return restTemplate.postForObject(requestUrl, null, LoginToken.class);
    }

    public String getRedirectUrl() {
        return String.format("%s/authorize?scope=user:email&client_id=%s&redirect_uri=%s", GITHUB_URL, CLIENT_ID, REDIRECT_URL);
    }
}

