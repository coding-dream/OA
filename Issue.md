## 记录开发中遇到的一些问题 
- [x] Idea 开发工具中Tomcat的发布问题 
- [ ] 未完成 
    - [ ] 待办事项1
    - [ ] 待办事项2


## 问题
1. Eclipse对Gradle的支持不如人意，经过多次测试后转移到Idea中

2. 每次发布都不能及时更新代码，甚至需要发布2到3次或重启才解决bug

3. Leave表和MySQL关键字 的冲突，导致建表失败，出现的令人困惑的错误！

4. 粗心大意 实体首次忘记加    @GeneratedValue(strategy = GenerationType.IDENTITY)，后面修改后报
java.sql.SQLException: Field 'message_id' doesn't have a default value,Hibernate并没有自动更新此字段属性，删除原表重启Tomcat即可

