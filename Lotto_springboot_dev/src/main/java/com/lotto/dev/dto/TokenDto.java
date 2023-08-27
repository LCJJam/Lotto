package com.lotto.dev.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TokenDto {
    private String grantType;
    private String accessToken;
    private Long tokenExpiresIn;

    public String toString(){

        return "grantType :" + this.grantType + " \n" +
                "accessToken :" + accessToken + " \n" +
                "tokenExpiresIn :" + tokenExpiresIn
                ;
    }
}
