package com.wenjun.oa.bean;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by wangli0 on 2017/4/3.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Entity
@Table(name = "user")
public class User {

    @Id @Column(name = "zj_user_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String loginName; // 登录名
    private String password; // 密码
    private String name; // 真实姓名
    private String gender; // 性别
    private String phoneNumber; // 电话号码
    private String email; // 电子邮件
    private String description; // 说明

    private Date createTime; //注册时间

    //本类与 Department的多对一
    @ManyToOne(targetEntity = Department.class,fetch = FetchType.LAZY)
    @JoinColumn(name = "depart_id",referencedColumnName = "zj_depart_id")
    private Department department;


    /**
     * 本类与 role的多对多
     * ManyTo 本方为Many一方(从表)，可以设置cascade属性，主表删除，则从表级联删除
     * 多对多情况下，两端才同时控制关联，两端使用@JoinTable设置中间表。其他的情况只需一端控制使永@JoinColumn即可
     */
    @ManyToMany(targetEntity = Role.class,fetch = FetchType.LAZY)
    @JoinTable(
            name = "center_user_role",
            joinColumns = @JoinColumn(name = "user_id",referencedColumnName = "zj_user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id",referencedColumnName = "zj_role_id")
    )
    private Set<Role> roles = new HashSet<Role>();


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", loginName='" + loginName + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", description='" + description + '\'' +
                ", department=" + department +
                ", roles=" + roles +
                '}';
    }

}
