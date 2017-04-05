package com.wenjun.oa.bean;

import org.hibernate.annotations.Fetch;

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
public class Privilege {
    @Id
    @Column(name = "zj_privilege_id")
    private Long id;
    private String url;
    private String name; // 权限名称
    @ManyToMany(targetEntity = Role.class)
    @JoinTable(
            name = "center_role_privilege",
            joinColumns = @JoinColumn(name = "privilege_id",referencedColumnName = "zj_privilege_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id",referencedColumnName = "zj_role_id")
    )
    private Set<Role> roles = new HashSet<Role>();//权限与角色是多对多关系

    /**
     * 自己对自己的映射
     * 本方为Many,可以设置级联操作。 在ManyToOne中 默认加载  one 属性 ，而在 OneToMany中，懒加载默认不加载 many 属性
     * name = parent_id Many的一方 "外键名" ,测试发现referencedColumnName="zj_privilege_id" 可以省略(hibernate可以找到映射表的主键)
     */
    @ManyToOne(targetEntity = Privilege.class,cascade = CascadeType.ALL)
    @JoinColumn(name = "parent_id",referencedColumnName = "zj_privilege_id")
    private Privilege parent; // 上级权限

    /**
     *  mappedBy="parent"属性(name="parent" 取决于另一个实体User的 private Privilege parent;)
     * 用于表明 本实体 不控制关联关系，这一段数据表将作为主表使用，不能使用@JoinColumn 映射外键列
     */
    @OneToMany(targetEntity = Privilege.class,mappedBy = "parent",fetch = FetchType.LAZY)
    private Set<Privilege> children = new HashSet<Privilege>(); // 下级权限





}
