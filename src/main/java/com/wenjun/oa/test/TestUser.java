package com.wenjun.oa.test;

import javax.persistence.*;

@Entity
@Table(name = "testUser")
public class TestUser {

    @Id @Column(name="userId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private int age ;
    private String email;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
