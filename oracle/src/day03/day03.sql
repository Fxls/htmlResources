--from�Ӿ�
select * from dept_xlyu;--��ѯ������
-- as ʹ�ñ��������������ִ�Сд���������ִ�Сд
select empno as id ,ename "Name" ,sal * 12 "Annual Salary" from emp_xlyu;
--where�Ӿ�,���Ʋ�ѯ���
select * from emp_xlyu where deptno = 10 ;
select ename,sal,job from emp_xlyu where job = 'salesman';
--select �Ӿ䣬���ֻ��ѯ��Ĳ����У���Ҫ��select��ָ������
select ename ,sal from emp_xlyu;
--��ѯ������> < >= <= != = <>
select ename ,sal from emp_xlyu where sal <2000;
select ename,sal,job from emp_xlyu where deptno != 10;
--��ѯ1982-1-1�Ժ���ְ��Ա��
select * from emp_xlyu where hiredate > to_date('1982-1-1','yyyy-mm-dd');
--and��or�ؼ���
--and��ͬʱ����
select ename ,sal ,job from emp_xlyu where sal>1000 and job='clerk';
--or����������һ������
select ename ,sal ,job from emp_xlyu where sal>1000 or job='clerk';
-- like ��ѯ ��like������ģ����ѯ��
--%��ʾ0������ַ�
--_��ʶ�����ַ�
--��ѯename�ڶ�����ĸΪa��Ա��
select ename ,job from emp_xlyu where ename like '_A%';
--��ѯename�к���a��Ա��
select ename,job from emp_xlyu where ename like '%a%';
--in, not in
-- �Ƚϲ�������in����ȡ�������б�Χ�е�����
-- not inȡ�������ϴ��б��е����ݼ�¼
--()��ʾ���ϣ�����Ϊ����Ԫ��
--��ѯְλ��manager��clerk��Ա��
select ename ,job from emp_xlyu where job in ('manager','clerk');
--��ѯ���ǲ���10��20��Ա��
select ename ,job,deptno from emp_xlyu where deptno not in (10,20);
--between...and.. 
select ename ,sal from emp_xlyu where sal between 1500 and 3000;
--is null ,is not null
--��ѯ��������Ϊnull��Ա��
select ename ,sal ,comm from emp_xlyu where comm is null ;
--��ѯ�������ݲ�Ϊnull��Ա��
select ename ,sal ,comm from emp_xlyu where comm is not null;
/*
>any   ������С
<any   С�����
>all   �������
<all   С����С
*/
select * from emp_xlyu where sal >any(3500,4500,5000);
--������ѧ����
select * from emp_xlyu where (sal*12)>50000;
--distinct�����ظ�
select deptno from emp_xlyu;
select distinct deptno from emp_xlyu; 
--order by ���򣨶����ݰ�һ������������������
select ename  ,deptno from emp_xlyu order by deptno;
--ASC����DESC����(ʲô����дĬ����ASC����)
select * from emp_xlyu where deptno =10 order by sal desc;
--���������
select * from emp_xlyu order by deptno ASC ,sal desc;
--�ۺϺ���
--min (�ֶ�)��ͳ��׼���������ֶε���Сֵ
--max ���ֶΣ���ͳ��׼���������ֶε����ֵ
--avg ���ֶΣ���ͳ���ֶ��������ݵ�ƽ��ֵ����ֵ���ͣ�
--sum ���ֶΣ���ͳ���ֶ��������ݵ��ܺͣ���ֵ���ͣ�
--count ���ֶΣ�:ͳ���ֶ����������ݷ�nullֵ�ĸ���
select max(sal) as max ,min(sal) as min from emp_xlyu;
--��ѯԱ����ƽ��нˮ
select round(avg(sal)) from emp_xlyu;
--��ѯ����Ա����нˮ�ܺ�
select sum��sal�� from emp_xlyu;
--��Ա������ƽ��ֵ���ǿ�Լ����
select avg(nvl(comm,0)) from emp_xlyu;
--��ѯ��˾�ܹ��ж���Ա��
select count (comm) from emp_xlyu;
--�ۺϺ����Կ�ֵ�����ۺϺ�������nullֵ��
select avg(comm) avg_comm from emp_xlyu;
select avg(nvl(comm,0)) avg_comm from emp_xlyu;
--group by �ֶΣ�����ָ���ֶν��з��飬�ܹ���Ϊ�����飬���ж�������¼���з��أ�ÿһ���¼��ֻ��һ�����ؼ�¼
--select�ؼ��ֺ��棬�����ֶα�����group by ������ֶλ����ǾۺϺ�����ֻ��һ�����ݷ��أ�
select deptno from emp_xlyu group by deptno;
-- �������ŵ����нˮ
select deptno ,max(sal) from emp_xlyu group by deptno;
-- �������ŵ�ƽ��нˮ
select deptno,avg(sal) from emp_xlyu group by deptno;
--having����group by����֮��Ľ����������ɸѡ
select deptno ,max(sal) from emp_xlyu group by deptno having max(sal)>=4000;
/*
�ѿ��������������¼�ֱ���ƴ��
select �ֶ� from ��1����2��--��1��2���ѿ�����
������ѯʱ��ָ�����ֶ�ͨ��Ҫʹ�� ����.�ֶ�����ָ����ѯ���ֶ�����һ�����е�
�����������ֱ���ڱ�������ʹ�ñ�ı���
�����������ʱ�򣬲���ʹ��as
*/
select E.Ename name,D.Deptno As no from emp_xlyu E,dept D;
select * from emp_xlyu e ,dept_xlyu d;
--��ֵ����
select e.ename , d.dname from emp_xlyu e,dept_xlyu d where e.deptno = d.deptno;
--������
select * from emp_xlyu e join dept_xlyu d on (e.deptno=d.deptno);
/*
������
���� left [outer] job �ӱ�
�ӱ� right [outer] job ����
*/
--��������ұߴӱ�
select e.ename ,d.dname from emp_xlyu e left join dept_xlyu d on (e.deptno = d.deptno); 
--��ߴӱ��ұ�����
select e.ename ,d.dname from emp_xlyu e right join dept_xlyu d on (e.deptno = d.deptno);
--ȫ�����ӣ�û�����ӱ�֮��
select e.ename ,d.dname from emp_xlyu e full join dept_xlyu d on (e.deptno = d. deptno);
--�����ӣ����ݵ���Դ��һ����
select worker.empno w_empno,worker.ename w_ename,manager.empno m_empno,manager.ename m_ename from emp_xlyu worker join emp_xlyu manager on worker.mgr = manager.empno;





