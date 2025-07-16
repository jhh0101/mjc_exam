package com.mjc813.contact_web.dto;

import lombok.*;

@Data
@Getter
@Setter
public class ContactDto{
    private Integer id;
    private String name;
    private String phoneNumber;
    private String zipNumber;
    private String email;

    public String getContactFullInfo() {
        return String.format("[이름:%s, 전화번호:%s, ZIP:%s, Email:%s]"
                , this.name
                , this.phoneNumber
                , this.zipNumber
                , this.email
        );
    }
}
