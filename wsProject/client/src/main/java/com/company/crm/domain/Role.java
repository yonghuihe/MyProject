package com.company.crm.domain;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Role {
    private Long id;

    private String sn;

    private String name;
    
    private List<Permission> permissions = new ArrayList<>();
    //permissions[0].id = 1
    //permissions[1].id = 1

}