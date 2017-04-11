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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String url;
    private String name; // 权限名称
    @ManyToMany(targetEntity = Role.class,fetch = FetchType.EAGER)
    @JoinTable(
            name = "center_role_privilege",
            joinColumns = @JoinColumn(name = "privilege_id",referencedColumnName = "zj_privilege_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id",referencedColumnName = "zj_role_id")
    )
    private Set<Role> roles = new HashSet<Role>();//权限与角色是多对多关系

    @Transient
    private boolean show = false; //具体到某个用户权限是否有权限

    /**
     * 自己对自己的映射
     * 本方为Many,可以设置级联操作。 在ManyToOne中 默认加载  one 属性 ，而在 OneToMany中，懒加载默认不加载 many 属性
     * name = parent_id Many的一方 "外键名" ,测试发现referencedColumnName="zj_privilege_id" 可以省略(hibernate可以找到映射表的主键)
     */
    @ManyToOne(targetEntity = Privilege.class,fetch = FetchType.EAGER)
    @JoinColumn(name = "parent_id",referencedColumnName = "zj_privilege_id")
    private Privilege parent; // 上级权限

    /**
     *  mappedBy="parent"属性(name="parent" 取决于另一个实体User的 private Privilege parent;)
     * 用于表明 本实体 不控制关联关系，这一段数据表将作为主表使用，不能使用@JoinColumn 映射外键列
     */
    @OneToMany(targetEntity = Privilege.class,mappedBy = "parent",fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    private Set<Privilege> children = new HashSet<Privilege>(); // 下级权限


    public Privilege() {}
    public Privilege(String name, String url, Privilege parent) {
        this.name = name;
        this.url = url;
        this.parent = parent;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Privilege getParent() {
        return parent;
    }

    public void setParent(Privilege parent) {
        this.parent = parent;
    }

    public Set<Privilege> getChildren() {
        return children;
    }


    public void setChildren(Set<Privilege> children) {
        this.children = children;
    }

    public boolean getShow() {
        return show;
    }

    public void setShow(boolean Show) {
        show = Show;
    }

    @Override
    public String toString() {
        return "Privilege{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", name='" + name + '\'' +
                ", show=" + show +
                '}';
    }

}
