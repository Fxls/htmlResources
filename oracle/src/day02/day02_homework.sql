/**
  ��һ��
 */
select job,length (job)from emp_xlyu order by job ;
--1��job�е����ݰ�����ĸ��������
select ename||'earns$'||sal||' monthly but wants $'||sal*3 as "dream salary" from emp_xlyu;
--2��nameƴ��earns$��salaryƴ��monthly but wants$ƴ������нˮ
select empno,ename from emp_xlyu where upper(job) = 'clerk';
--3����emp_xlyu��ȡjobΪclerk���ֶ�empno��ename
select substr('doctor who',1,6)from dual;
--4����ȡ���ַ�������ȡ���doctor
select trim('��'from'���¶�����')as "����" from dual;
--5����'���¶�����'ǰ���ȥ'��'���õ����¶�����
select trim(leading '��'from'���¶�����') as "����" from dual;
--6���¶�����
select trim(trailing '��'from'���¶�����')as "����" from dual;
--7�����¶���
select lpad('tardis',10,'*')from dual;
--8����λ����tardisǰ����λ*
select lpad('tardis',3,'*')from dual;
--9��tar
select * from emp_xlyu where length (ename)=5;
--10���о�emp_xlyu�е�ename����Ϊ5�������ֶ�����

/**
  ������
 */
select ename,sal,round(sal*1.08)from emp_xlyu; 
--1��1.08���Ĺ��ʣ�Ȼ�������������������
select mod(11,4)from dual;
--2��3��11����4������Ϊ3��
select trunc(123.123,-1)from dual;
--3��120��С����ǰһλ��ȡ���֣�
select floor(sysdate-hiredate)as "��ְʱ��"��ename from emp_xlyu;
--4��ϵͳ���ڼ�ȥ��ְ���ڣ�ȡfloor����Ҳ����С����ǰ������

/**
  ������
 */
desc t_accout_xlyu ;
update t_accout_xlyu set login_passwd = '256528',create_date='02-3��-14' where id = 1;
select id,login_name,login_passwd,to_char(create_date,'yyyy"-"mm"-"dd'),real_name,idcard_no,telephone from t_accout_xlyu where id = 1;

/**
  ������
 */
select to_char(systimestamp ,'yyyy"��"mm"��"dd"��" HH24"ʱ"MI"��"SS"��"')from dual;
select upper('name hiredate-review')from dual;

/**
  ������
*/
select * from emp_xlyu where extract(year from hiredate)='1987';
--1����ȡ��ְʱ����1987��������ֶ�����
select ename,last_day(hiredate)from emp_xlyu;
--2�����������˵���������ְʱ��������µ����һ��
select next_day(sysdate ,7)from dual;
--3����������ʱ��27-4��-19
select ename,add_months(hiredate,3)from emp_xlyu;
--4��������ְʱ���ĵ������µ�ʱ��
select ename ,months_between(sysdate,hiredate)from emp_xlyu;
--5������Ա����ְ��������������С����
select greatest(to_date('20070101','yyyymmdd'),hiredate)from emp_xlyu;
--6���Ƚ�2007-01-01��Ա����ְ���ڷ������ֵ�����صĶ���01-1��-07

/**
  �ڰ���
*/
create table customer_xlyu(
  cust_id number(4),
  cname varchar2(25),
  birthday date,
  account number
);
insert into customer_xlyu(cust_id,cname,birthday)values(
001,'���','01-3��-75'
);
insert into customer_xlyu(cust_id,cname)values(
002,'�Ÿ�'
);
insert into customer_xlyu(cust_id,cname)values(
003,'����'
);
insert into customer_xlyu(cust_id,cname)values(
004,'����'
);
select * from customer_xlyu;
select * from customer_xlyu where birthday is null;

/**
  �ھ���
*/
select empno,ename,sal,nvl2(comm,comm,0),sal+nvl2(comm,comm,0)from emp_xlyu;

/**
  ��ʮ��
*/
select empno,ename,nvl2(hiredate,to_char(hiredate,'yyyy-mm-dd'),'not available')from emp_xlyu;