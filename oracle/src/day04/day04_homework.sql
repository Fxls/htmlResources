--1.1sales��������Щְλ
select job from emp_xlyu where deptno =(select deptno from dept_xlyu where dname = 'sales');
--1.2��Щ�˲��Ǳ��˵ľ���
select ename,job from emp_xlyu a where not exists(select 3 from emp_xlyu where mgr = a.empno);
--1.3˭��нˮ��ford�ߣ�����������
select ename from emp_xlyu where sal>(select sal from emp_xlyu where ename = 'ford');
--1.4˭��fordͬ���ţ��г����֣���ȥford��
select ename from emp_xlyu where deptno =(select deptno from emp_xlyu where ename='ford')
and ename != 'ford';
--1.5�ĸ����ŵ������Ȳ���20���˶ࣨ��ͱȽϣ�
select deptno ,count(1)from emp_xlyu group by deptno having count(1)>(select count(*)from emp_xlyu
where deptno =20);
--1.6 �г����ֺ�ְλ����ѯԱ�����ڵĲ���ƽ��нˮ����2000��Ա����Ϣ
select ename ,job 
from emp_xlyu
where deptno in (select deptno from emp_xlyu
group by deptno
having avg(nvl(sal,0))>2000);
/*
2
where�����Ϊʲô����дrownum>...
��
*/
--3
select *from (select a.*,rownum rn from 
(select * from news order by occurtime desc )a where rownum<=10)
where rn>=6;
--4
--ABD
--5
--����ͬ��job���õȼ�
--6.5

--6.6







