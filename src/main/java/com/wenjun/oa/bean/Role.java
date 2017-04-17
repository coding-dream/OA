package com.wenjun.oa.bean;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by wangli0 on 2017/4/4.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Entity
public class Role {
    @Id
    @Column(name = "zj_role_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;
    @ManyToMany(targetEntity = User.class,fetch = FetchType.LAZY)
    @JoinTable(
            name = "center_user_role",
            joinColumns = @JoinColumn(name = "role_id",referencedColumnName = "zj_role_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id",referencedColumnName = "zj_user_id")
    )
    private Set<User> users = new HashSet<User>();


    @ManyToMany(targetEntity = Privilege.class,fetch = FetchType.EAGER)
    @JoinTable(
            name = "center_role_privilege",
            joinColumns = @JoinColumn(name = "role_id",referencedColumnName = "zj_role_id"),
            inverseJoinColumns = @JoinColumn(name = "privilege_id",referencedColumnName = "zj_privilege_id")
    )
    private Set<Privilege> privileges = new HashSet<Privilege>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    public Set<Privilege> getPrivileges() {
        return privileges;
    }

    public void setPrivileges(Set<Privilege> privileges) {
        this.privileges = privileges;
    }

}
