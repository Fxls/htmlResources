-- ע��
-- ����NUMBER��������
--

create table student_xlyu(
  -- �������ݱ��е��ֶμ�����   �ֶ��� ����  ���ֶ���   ����   
  id number(4),
  name varchar2(20), --�洢20���ֽڳ��ȵĿɱ��ַ���
  gender char(1),  --�洢һ���ֽڳ��ȵĹ̶��ַ���
  sal number(7,2)  --���һ���ֶβ�Ҫ�Ӷ���
);

create table student1_xlyu(
  id number(4),
  --varchar2��ʡ�ռ�
  name varchar2(20),
  --char��ѯЧ�ʸ�
  gender char(1),
  resience char(100)
);
create table student2_xlyu(
  id number(4),
  name varchar2(20),
  gender char(1),
  --�洢�������� ��ռ��7���ֽڣ�Ĭ����ʾ��ʽ   DD-MON-RR
  birth date
);

create table employee_xlyu(
  id number(4),
  name varchar2(20),
  gender char(1),
  birth date,
  salary number(6,2),
  job varchar2(30),
  deptno number(2)
);

desc employee_xlyu;
drop table employee_xlyu;
create table employee_xlyu(
  id number(4),
  name varchar2(20) NOT null,--name�ֶβ���Ϊnullֵ���ǿ�Լ����
  gender char(1) default 'M',--��������ֵ�����δ��ӣ��Զ���ֵΪdefault���ͣ�û��Ĭ��ֵʱΪnullֵ
  birth date,
  salary number(6,2),
  job varchar2(30),
  deptno number(2)
);

rename employee_xlyu to myemp_xlyu;--�޸ı�����

--ALTER TABLE *** ADD(�Ա���޸�---ADD������);
ALTER TABLE MYEMP_XLYU ADD(
  HIREDATE DATE default SYSDATE
);

--ALTER TABLE *** DROP(�Ա���޸�---DROPɾ����);
ALTER TABLE MYEMP_XLYU DROP(
  HIREDATE
);
DESC myemp_xlyu;

--ALTER TABLE *** MODIFY(�����޸�);
ALTER TABLE MYEMP_XLYU MODIFY(
  JOB varchar2(40) DEFAULT 'AAA'
);
DESC myemp_xlyu;

INSERT INTO MYEMP_XLYU(ID,NAME,JOB,SALARY)VALUES(
  1001,'jack','boss',9999.99
);
INSERT INTO MYEMP_XLYU VALUES(
  1002,'xlyu','F','18-4��-19',10,'emp',11
);
