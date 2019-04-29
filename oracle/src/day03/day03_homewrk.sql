--1.1��ѯ20��30����Ա����Ϣ
select ename,deptno from emp_xlyu where deptno=20 or deptno = 30;
--1.2��ѯ�޹�������Ϣ
select ename,job from emp_xlyu where mgr is null order by job;
--1.3��ѯ�м�ЧԱ����Ϣ���ʵ���
select ename,sal,comm from emp_xlyu where comm is not null order by sal desc;
--1.4��ѯ��������ĸ��a������
select ename from emp_xlyu where ename like '__a%';
--1.5��ѯ����Ϣƴ����ʾ
select ename||','||job||','||sal as out_put from emp_xlyu;
--1.6��ѯ����Ϣ��tigao20%������ʾ
select empno,ename,sal,sal+sal*0.2 from emp_xlyu;
--1.7��ѯ��1200����ְʱ������
select ename ,sal,hiredate from emp_xlyu where sal>=1200 order by hiredate;
--1.8��ѯ��accouting���ŵ���Ϣ
select deptno,dname,loc from dept_xlyu where dname!='accounting';
--2.1��ѯ���������нˮ
select deptno ,max(sal) from emp_xlyu group by deptno ;
--2.2��ѯС�ڸ��������н�ʵ���Ϣ
select a.ename,a.sal,a.deptno,b.maxsal
from emp_xlyu a,
(select deptno ,max(sal)maxsal
from emp_xlyu
group by deptno)b
where a.deptno = b.deptno
and a.sal < b.maxsal;
--2.3�ҳ�emp���ʸ������ڲ��Ź����߹��ʵ�Ա��
select * from emp_xlyu a,emp_xlyu b where a.mgr=b.empno and a.sal>b.sal;
--2.4�ҳ�����ƽ�����ʵ�Ա��
select a.*  from emp_xlyu a,
(select deptno,avg(sal)sal from emp_xlyu
group by deptno)b where a.deptno=b.deptno and a.sal>b.sal;
--3.1
--B:where �̾䲻�����Ʒ�����
--3.2
select calssid,subject,max(score) from student_xlyu group by calssid,subject;
--3.3
--D
--4.1�д������Ǹ���
select ename ,job from emp_xlyu where sal > (select avg(sal)from emp_xlyu);
--4.2ÿ�ſζ�����80�ֵ�
select * from student where name not in(select distinct name from student where fenshu <80);
--4.3
select account,count(userlist,telephone),sum(rent),
nvl(sum(fee01),0),
nvl(sum(fee02),0),
nvl(sum(fee03),0),
nvl(sum(fee04),0)
from userlist left outer join charge 
on charge.telephone = userlist.telephone
group by account;
--4.4(������)
select e.empname,e.empno,e.sal,t.grade
from emp e join taxgrade t 
on e.sal between t.taxmin and t.taxmax;
--4.5.1
select s.sname from student s join sc on s.sno = sc.sno
join course c on c.cno = sc.cno
where c.cname ='�����ԭ��'��
--4.5.2
select c.cname from student s join sc on s.sno = sc.sno
join course c on c.cno = sc.cno
where s.sname ='���ǳ�'��
--4.6
select a.name from test a where a.age>(select manager.age from test manager where manager.id = a.manager);
--4.7������
select c.cityno,c.cityname,c.stateno,s.statename from city c left join state s on(c.stateno = s.stateno)order by(c.cityno) ; 
--5.1
drop table t_subject_xlyu;
create table t_subject_xlyu(
subject_id number(1)primary key,
subject_name varchar2(5)
);
insert into t_subject_xlyu values(1,'����');
insert into t_subject_xlyu values(2,'��ѧ');
drop table t_student_xlyu;
create table t_student_xlyu(
student_id number (1) primary key,
class_id number (1),
student_name char(5)
);
insert into t_student_xlyu values(1,1,'��һ');
insert into t_student_xlyu values(2,1,'�¶�');
insert into t_student_xlyu values(3,1,'����');
insert into t_student_xlyu values(4,1,'����');
insert into t_student_xlyu values(5,2,'����');
insert into t_student_xlyu values(6,2,'����');
create table t_assess_rule_xlyu (
rule_id number (1) primary key,
class_id number (1),
assess_type char(20),
scale number(2),
desc1 char(20)
);
insert into t_assess_rule_xlyu values(1,1,'test_score',70,'�ɼ����̶���');
insert into t_assess_rule_xlyu values(2,1,'check_in',10,'����');
insert into t_assess_rule_xlyu values(3,1,'task_scale',10,'��ҵ�����');
insert into t_assess_rule_xlyu values(4,1,'task_score',10,'��ҵ�ɼ�');
insert into t_assess_rule_xlyu values(5,2,'test_score',70,'�ɼ����̶���');
insert into t_assess_rule_xlyu values(6,2,'check_in',70,'����');
insert into t_assess_rule_xlyu values(7,2,'task_scale',70,'��ҵ�����');
create table t_performance_xlyu (
performance_id number (2)primary key,
student_id number (1),
subject_id number (1),
test_score number (3),
check_in number (3),
task_scale number (3),
task_score number(3)
);
insert into t_performance_xlyu values(1,1,1,90,100,100,90);
insert into t_performance_xlyu values(2,1,2,67,100,100,78);
insert into t_performance_xlyu values(3,2,1,71,100,100,80);
insert into t_performance_xlyu values(4,2,2,100,100,100,95);
insert into t_performance_xlyu values(5,3,1,85,100,100,90);
insert into t_performance_xlyu values(6,3,2,88,100,100,90);
insert into t_performance_xlyu values(7,4,1,81,100,100,90);
insert into t_performance_xlyu values(8,4,2,78,100,100,88);
insert into t_performance_xlyu values(9,5,1,63,95,100,66);
insert into t_performance_xlyu values(10,5,2,87,95,100,90);
insert into t_performance_xlyu values(11,6,1,84,91,100,82);
insert into t_performance_xlyu values(12,6,2,72,91,100,70);

--5.1��ѯclass����id��1��ѧ���ɼ�
select s.student_name,sub.subject_name,p.test_score
from t_student_xlyu s join t_performance_xlyu p
on s.student_id = p.student_id
join t_subject_xlyu sub
on sub.subject_id = p.subject_id
where s.class_id = 1;
--5.2һ���ܷ�����
select s.student_name,sum(p.test_score)total_score
from t_student_xlyu s join t_performance_xlyu p
on s.student_id=p.student_id
join t_subject_xlyu sub 
on sub.subject_id = p.subject_id
where s.class_id = 1
group by s.student_id,s.student_name
order by total_score desc;


