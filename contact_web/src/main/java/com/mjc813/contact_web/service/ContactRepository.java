package com.mjc813.contact_web.service;

import com.mjc813.contact_web.dto.ContactDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ContactRepository {

    @Autowired
    private IContactMybatisMapper iContactMapper;

    public void insert(ContactDto contact){
        iContactMapper.insert(contact);
    }

    public List<ContactDto> selectAll(ContactDto contact){
        return iContactMapper.selectAll(contact);
    }

}
