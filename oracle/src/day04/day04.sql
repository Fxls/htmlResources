--�Ӳ�ѯ,���������Ӳ�ѯ�Ľ��
--1.0
select e.ename,e.job from emp_xlyu e where e.job = 
(select job from emp_xlyu where ename ='scott');--���Һ�scott��ְͬλ��Ա��
--2.0
select deptno ,ename ,sal from emp_xlyu  where sal > 
(select avg(sal)from emp_xlyu);
--3.0
select empno,ename,job,sal,deptno from emp_xlyu
where deptno in (select deptno from emp_xlyu where job ='salesman')
and job <> 'salesman';
--4.0exists��ߵ��Ӳ�ѯ���ٷ���һ�����ݣ���������������true
select deptno ,dname from dept_xlyu d where exists (select * from emp_xlyu e where d.deptno=e.deptno);
--5.0���нˮ���ڲ���30�����нˮ�Ĳ�����Ϣ
select deptno ,min(sal)min_sal from emp_xlyu group by deptno 
having min(sal)>(select min(sal)from emp_xlyu where deptno = 30);
--6.0�Ӳ�ѯ��from���֣���ʱ�Ӳ�ѯ��������ʹ��
select e.deptno ,e.ename,e.sal from emp_xlyu e,(select deptno ,avg(sal)avg_sal from emp_xlyu group by deptno)x
where e.deptno = x.deptno and e.sal>x.avg_sal order by e.deptno;
--7.0�Ӳ�ѯ��select����
select e.ename ,e.sal,(select d.deptno from dept_xlyu d where d.deptno = e.deptno)deptno from emp_xlyu e;
--��ҳ��ѯ
--rownum���������ڷ��ر�־��������˳�������
--ֻ�ܴ�1���������ܴӽ������ֱ�ӽ�ȡ
select * from (select rownum rn,e.*from emp_xlyu e)where rn between 8 and 10;
select * from (select rownum rn ,t.*from (select empno,ename,sal from emp_xlyu  order by sal desc) t)
where rn between 8 and 10;
Select Rownum , Ename, Empno, Sal From Emp_xlyu Where Rownum >= 1 And Rownum <= 5;
--decode����
--1.0
select ename ,job , sal ,decode (job ,'manager',sal*1.2,'analyst',sal*1.1,'salesman',sal*1.07,sal)bonus from emp_xlyu;
--2.0�ȼ���decode
select ename ,job,sal , case job when 'manager' then sal *12 when 'analyst' then sal * 1.1 when 'salesman' then sal*1.05 else sal end bonus from emp_xlyu ;
--3.0
select decode(job,'analyst','vip','manager','vip','operation')job,count(1)job_cnt from emp_xlyu group by decode(job ,'analyst','vip','manager','vip','operation');
--4.0
select deptno ,dname,loc from dept_xlyu order by decode(dname ,'operations','accounting',2,'sales',3);
--������
--row_number
--���ղ��ű��������ʾ��ÿ���ڰ�֮Դ�������򣬲��������ڱ���
select deptno,ename,empno, row_number() over (partition by deptno order by empno)as emp_id from emp_xlyu;
--rank()over (partition by col1 order by col2)
--����col1���飬�ڷ����ڲ�����col2����ȼ���ʶ���ȼ���ʶ����������ͬ�����ݷ�����ͬ����
--��Ծ�����������ͬ���ݣ�������ͬ�����ظ�ֵ
select deptno,ename,sal,comm ,rank()over(partition by deptno order by sal desc ,comm)"rank_id"from emp_xlyu;
--dense_rank()over (partition by col1 order by col2)
--��ʾ����col1���飬�ڷ����ڸ���col2����ȼ���ʶ����������ͬ�����ݷ�����ͬ����
--������������в��еڶ�����һ�����򽫻���������һ���rank��ͬ��rank����Ծ����
select deptno ,ename,sal,comm,dense_rank()over(partition by deptno order by sal desc,comm asc)from emp_xlyu;
/*
���ϲ���
union ����
union all ����ȫ��
intersect ����
minus �
ע�⣺�����������ֶθ���������ͬ����Ӧ�ֶε��������ͱ���һ��
*/

--union �ϼ�ȥ��
select empno,ename,job,sal from emp_xlyu where job = 'manager'
union select empno ,ename,job,sal from emp_xlyu where sal >2500
--union all�������ظ����֣�������
select * from emp_xlyu where job = 'maager' 
union all
select * from emp_xlyu where sal>2500;
--intersect ȥ������������ظ�������
--minus ȥ������������ظ������ݣ�ǰ���ڣ��󲻴��ڣ�
select * from emp_xlyu where job = 'manager'
intersect 
select * from emp_xlyu where sal>2500;
select * from emp_xlyu where job = 'manager'
minus 
select * from emp_xlyu where sal<2500;

--�߼����麯��
--rollup




















