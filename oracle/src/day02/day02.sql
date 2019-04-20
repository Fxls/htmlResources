/**
  concat(char1,char2)�ַ���ƴ�ӣ�ͨ��ʹ||��������
 */
select concat(concat(ename,':'),sal) from emp_xlyu ;
select ename||':'||sal from emp_xlyu;
-- �����ַ�������
select ename ,length(ename) from emp_xlyu;
-- upper ת���ɴ�д lower ת����Сд initcap��������ĸ��д
select upper ('good man ') , lower ('BADWOMAN'),initcap('why use r')
from dual;
/**
  trim��c2 from c1����c1��ǰ���ȥc2
  ltrim��c1��c2��c1����߽�ȥc2
  rtrim��c1��c2����c1���ұ߽�ȥc2
  */
select trim (' 'from'  bangolufsen  ')as "T1",
       ltrim ('intel','i')as "T2",
       rtrim ('intel','i')as "T3" from dual;
/**
  lpad��char1��n��char2����λ����
  rpad��char1��n��char2���Ҳ�λ����
  ������c1����˻����Ҷ���char2���㵽nλ
 */
select ename,lpad(sal,6,'%')as "salary" from emp_xlyu ;  
select ename,rpad(sal,6,'%')as "salary" from emp_xlyu ;
/**
  substr��char��m��n����ȡ���ַ�����m=0�����ַ���ʼ��mȡ��������β����ʼ
  ���û������n������n�ĳ��ȳ�����char�ĳ��ȣ���ȡ���ַ���ĩβλ��
 */
select substr('we do not talk anymore',0) from dual;
select substr('we do not talk anymore',0,9) from dual;
/**
 instr��char1��char2��n��m��
 ��n��λ�ÿ�ʼ������û��ָ��n���ӵ�һ���ַ���ʼ����
 m����ָ���Ӵ��ĵ�m���ֵĴ����������ָ��ȡ��1
 �����char1��û���ҵ��Ӵ�char2������0
  */
select instr ('my heart will go on and on','on')as "words" from dual;
/**
  round��n��m��m����0�������뵽С������mλ��mС��0�������뵽С����ǰ��mλ��mȡ0ֵ�������뵽����λ
  trunc��n��m��n��m�Ķ����round��ͬ�����ǹ��ܲ�ͬ
 */
select round (45.678,-1)as "t1",round(45.678,0) as "t2",round(45.678,1)as "t3" from dual;
select trunc (45.678,-1)as "t1",trunc(45.678,0) as "t2",trunc(45.678,1)as "t3" from dual ;
-- ����m����n���������nΪ0����n
select ename ||'-'||sal,mod(sal,1000)from emp_xlyu;
/**
  ceil��n���컨��
  floor��n���ذ�
  if n=4.5��ceil��4.5��-��5��floor��4.5��-��4
 */
select ceil(45.3) from dual ;
select floor (45.3 )from dual ;
-- ��ְ����
select ename||'-'||hiredate ,round (sysdate - hiredate )as "worktime"from emp_xlyu;
drop table test_xlyu; 
create table test_xlyu(
  c1 date,
  c2 timestamp
);
select sysdate from dual;

drop table student_xlyu;

-- sysdate���ص�ǰ��ϵͳʱ�䣬��ȷ���룬Ĭ����ʾ��ʽDD-MON-RR
create table student_xlyu(
  id number (4),
  name char (20),
  registerDate date default sysdate
);
-- �ڲ����������ص�ǰϵͳ���ں�ʱ�䣬��ȷ������
select systimestamp from dual;

--�ڲ�����������ϵͳʱ�䣬��ȷ������
select to_char(systimestamp,'ss.ff')from dual;

--to_date���ַ������ն��Ƹ�ʽת��������
--char�����ǻ����ַ���
--fmt��ʽ
--nlsparamsָ����������
select ename||':'||hiredate from emp_xlyu where hiredate > to_date ('1979-01-01','yyyy-mm-dd');

--to_char���������͵�����ת�����ַ�����
select ename, to_char(hiredate,'yyyy"��"mm"��"dd"��"')from emp_xlyu;

--last_day �����ǰ����ʱ����·ݵ����һ��
select last_day(sysdate) from dual ;
select last_day('20-2��-09')from dual;

--add_months���������ڵ��·ݽ�������
select ename,add_months(hiredate,10*12)as "��ְʮ����" from emp_xlyu;

--������������֮��������·�months_between
select ename ,round(months_between(sysdate,hiredate))as "hiredate" from emp_xlyu;

--��ʾ���ܼ���1-7��ʾ��-����next_day
select next_day(sysdate,4)as "next_wedn"from dual;

--least,greatest,�Ƚ����ڣ�����������С����ʽ���뱣��һ�£������ж������
select least(sysdate,'10-10��-08')from dual;
select greatest(sysdate,'10-10��-08')from dual;

--extract ��ȡʱ��������ꡢ�¡��գ�
select extract(year from sysdate)current_year from dual;
select extract(hour from timestamp '2008-10-10 10:10:10')from dual;

--null
select * from emp_xlyu where comm is null;
select * from emp_xlyu where comm is not null ;

--nvl2�ǿ�Լ��
select ename,sal,comm,nvl2(comm,sal+comm,sal)as "salary" from emp_xlyu;

