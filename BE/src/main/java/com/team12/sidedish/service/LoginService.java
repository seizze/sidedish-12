package com.team12.sidedish.service;

import com.team12.sidedish.domain.LoginToken;
import com.team12.sidedish.domain.User;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import javax.crypto.SecretKey;

public class LoginService {

    static final String GITHUB_URL = "https://github.com/login/oauth";

    static final String CLIENT_ID = "9562b1261ca3c697df0c";

    static final String CLIENT_SECRET = "a42a93d7c1a4c4ef7abcd59ba0e28daa6a137544";

    static final String REDIRECT_URL = "http://localhost:8080/login";

    static final String jwtSecretKey = "hahahahahahahahahahahahaahahahahahahaahahahaahahahaahahaahahahahaahahhhhhhhhhhhhhhhhhhhhhh";

    static final SecretKey key = Keys.hmacShaKeyFor(jwtSecretKey.getBytes());

    public LoginToken getAccessToken(String code) {

        String requestUrl = String.format("%s/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s", GITHUB_URL, CLIENT_ID, CLIENT_SECRET, REDIRECT_URL, code);

        RestTemplate restTemplate = new RestTemplate();
        return restTemplate.postForObject(requestUrl, null, LoginToken.class);
    }

    public String getRedirectUrl() {
        return String.format("%s/authorize?scope=user:email&client_id=%s&redirect_uri=%s", GITHUB_URL, CLIENT_ID, REDIRECT_URL);
    }

    public User getUserInfo(String tokenType, String token) {
        System.out.println(tokenType);
        System.out.println(token);
        User user = new User();
        String requestUrl = "https://api.github.com/user";
        RestTemplate restTemplate = new RestTemplate();

        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.add(HttpHeaders.AUTHORIZATION,  String.format("%s %s", tokenType, token));

        HttpEntity entity = new HttpEntity(httpHeaders);

        ResponseEntity<User> response = restTemplate.exchange(requestUrl, HttpMethod.GET, entity, User.class);
        return response.getBody();
    }

    public String generateJwtToken(String email) {
        String jws = Jwts.builder().setId(email).signWith(key).compact();
        System.out.println("jws:  " + jws);
        return jws;
    }

    public boolean isVerify(String jws) {
        String Id  = "";
        return Jwts.parserBuilder().setSigningKey(key).build().parseClaimsJws(jws).getBody().getId().equals(Id);
    }

    public String getIdFromJws(String jws) {
        try {
            return Jwts.parserBuilder().setSigningKey(key).build().parseClaimsJws(jws).getBody().getId();
        } catch (JwtException e) {
            return null;
        }
    }
}

