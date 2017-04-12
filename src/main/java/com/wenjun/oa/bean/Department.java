package com.wenjun.oa.bean;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by wangli0 on 2017/4/8.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Entity
public class Department {

    @Id @Column(name = "zj_depart_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;

    // mappedBy="department"属性(name="department" 取决于另一个实体User的 private Department department;)
    @OneToMany(targetEntity = User.class,mappedBy = "department",fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private Set<User> users = new HashSet<User>();

    //自关联
    @ManyToOne(targetEntity = Department.class)
    @JoinColumn(name = "parent_id",referencedColumnName = "zj_depart_id")
    private Department parent;

    @OneToMany(targetEntity = Department.class,mappedBy = "parent",fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private Set<Department> children = new HashSet<Department>();


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

    public Department getParent() {
        return parent;
    }

    public void setParent(Department parent) {
        this.parent = parent;
    }

    public Set<Department> getChildren() {
        return children;
    }

    public void setChildren(Set<Department> children) {
        this.children = children;
    }





}
