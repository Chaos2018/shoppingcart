prompt PL/SQL Developer import file
prompt Created on 2017��4��13�� by xiyem
set feedback off
set define off
prompt Creating CLASSIFY...
create table CLASSIFY
(
  id     NUMBER not null,
  classs VARCHAR2(32)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column CLASSIFY.classs
  is '����';
alter table CLASSIFY
  add constraint PK_CLASSIFY_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating COMMODITY...
create table COMMODITY
(
  id       NUMBER not null,
  comname  VARCHAR2(32),
  cid      NUMBER,
  describe VARCHAR2(1500),
  price    NUMBER,
  stock    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column COMMODITY.comname
  is '��Ʒ����';
comment on column COMMODITY.cid
  is '����id';
comment on column COMMODITY.describe
  is '���� ';
comment on column COMMODITY.price
  is '�۸�';
comment on column COMMODITY.stock
  is '���';
alter table COMMODITY
  add constraint PK_COMMODITY_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating ORDERS...
create table ORDERS
(
  id         NUMBER not null,
  userid     NUMBER,
  createtime DATE,
  state      NUMBER,
  price      NUMBER,
  cmid       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column ORDERS.userid
  is '�û�ID';
comment on column ORDERS.createtime
  is '����ʱ��';
comment on column ORDERS.state
  is '����״̬';
comment on column ORDERS.price
  is '�۸�';
comment on column ORDERS.cmid
  is '������ƷID';
alter table ORDERS
  add constraint PK_ORDER_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating ORDERSCOMMODIFY...
create table ORDERSCOMMODIFY
(
  id   NUMBER,
  ocid NUMBER,
  num  NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column ORDERSCOMMODIFY.ocid
  is '��Ʒid';
comment on column ORDERSCOMMODIFY.num
  is '��Ʒ����';

prompt Creating RELATION...
create table RELATION
(
  oid    NUMBER,
  sid    NUMBER,
  userid NUMBER,
  id     NUMBER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column RELATION.oid
  is '����ID';
comment on column RELATION.sid
  is '���ﳵID';
comment on column RELATION.userid
  is '�û�ID';
alter table RELATION
  add constraint PK_RELATION_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating SHOPPINGCART...
create table SHOPPINGCART
(
  id       NUMBER not null,
  shopping NUMBER,
  num      NUMBER,
  price    NUMBER,
  userid   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column SHOPPINGCART.shopping
  is '��ƷID';
comment on column SHOPPINGCART.num
  is '��Ʒ����';
comment on column SHOPPINGCART.price
  is '�۸�';
comment on column SHOPPINGCART.userid
  is '�û�ID';
alter table SHOPPINGCART
  add constraint PK_SHOPPINGCART_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating TREE...
create table TREE
(
  id   NUMBER not null,
  name VARCHAR2(20),
  url  VARCHAR2(32),
  icon VARCHAR2(50),
  pid  NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TREE.name
  is '�˵��� ';
comment on column TREE.url
  is '��ַ';
comment on column TREE.icon
  is 'ͼ��';
comment on column TREE.pid
  is ' ��ID';
alter table TREE
  add constraint PK_TREE_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating USERSHOPPING...
create table USERSHOPPING
(
  id        NUMBER not null,
  username  VARCHAR2(32),
  userpwd   VARCHAR2(32),
  nick      VARCHAR2(32),
  userlevel NUMBER,
  email     VARCHAR2(20),
  tel       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column USERSHOPPING.nick
  is '�ǳ�/����';
comment on column USERSHOPPING.userlevel
  is '����';
comment on column USERSHOPPING.email
  is '����';
comment on column USERSHOPPING.tel
  is '�绰';
alter table USERSHOPPING
  add constraint PK_USERSHOPPING_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for CLASSIFY...
alter table CLASSIFY disable all triggers;
prompt Disabling triggers for COMMODITY...
alter table COMMODITY disable all triggers;
prompt Disabling triggers for ORDERS...
alter table ORDERS disable all triggers;
prompt Disabling triggers for ORDERSCOMMODIFY...
alter table ORDERSCOMMODIFY disable all triggers;
prompt Disabling triggers for RELATION...
alter table RELATION disable all triggers;
prompt Disabling triggers for SHOPPINGCART...
alter table SHOPPINGCART disable all triggers;
prompt Disabling triggers for TREE...
alter table TREE disable all triggers;
prompt Disabling triggers for USERSHOPPING...
alter table USERSHOPPING disable all triggers;
prompt Deleting USERSHOPPING...
delete from USERSHOPPING;
commit;
prompt Deleting TREE...
delete from TREE;
commit;
prompt Deleting SHOPPINGCART...
delete from SHOPPINGCART;
commit;
prompt Deleting RELATION...
delete from RELATION;
commit;
prompt Deleting ORDERSCOMMODIFY...
delete from ORDERSCOMMODIFY;
commit;
prompt Deleting ORDERS...
delete from ORDERS;
commit;
prompt Deleting COMMODITY...
delete from COMMODITY;
commit;
prompt Deleting CLASSIFY...
delete from CLASSIFY;
commit;
prompt Loading CLASSIFY...
insert into CLASSIFY (id, classs)
values (1, 'ʳƷ');
insert into CLASSIFY (id, classs)
values (2, '��װ');
insert into CLASSIFY (id, classs)
values (3, '����');
insert into CLASSIFY (id, classs)
values (4, '��ˮ');
commit;
prompt 4 records loaded
prompt Loading COMMODITY...
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (1, '��������', 1, '��ԭ�ϣ���', 5, 10);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (2, '�����ȳ�', 1, '��ԭ�ϣ����', 3, 23);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (3, '�ع�������', 1, '��ԭ�ϣ��ع���', 1, 455);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (4, '����������', 1, '��ԭ�ϣ�Сǿ', 3, 99);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (5, '��ըСǿ', 1, '��ԭ�ϣ�Сǿ', 15, 99);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (6, '�Οhʺ����', 1, '��ԭ�ϣ�ʺ����', 20, 99);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (7, '�����׶���', 1, '��ԭ�ϣ��׶���', 50, 99);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (8, '����������', 1, '��ԭ�ϣ�������', 30, 99);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (9, '��������', 1, '��ԭ�ϣ�����', 150, 99);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (10, '������', 1, '��ԭ�ϣ����', 350, 99);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (11, '�ʵ۵���װ', 2, '��ԭ�ϣ�����', 10000, 9);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (12, '����BOOM7', 3, '��ԭ�ϣ����', 6000, 8);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (13, '��͢��Һ��', 4, '��ԭ�ϣ�����ͷ�Ұ׿�ˮ', 180, 7);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (14, '82��ѩ��', 4, '��ԭ�ϣ�ѩ��', 3, 6);
insert into COMMODITY (id, comname, cid, describe, price, stock)
values (15, 'èʺ����', 4, '��ԭ�ϣ�èʺ', 100, 5);
commit;
prompt 15 records loaded
prompt Loading ORDERS...
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (21, 1, to_date('27-03-2017 18:02:29', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 21);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (22, 1, to_date('27-03-2017 18:04:16', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 22);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (23, 1, to_date('27-03-2017 18:05:38', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 23);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (24, 1, to_date('27-03-2017 18:05:59', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 24);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (8, 1, to_date('25-03-2017 18:15:54', 'dd-mm-yyyy hh24:mi:ss'), 2, 1100, 8);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (9, 1, to_date('25-03-2017 18:20:05', 'dd-mm-yyyy hh24:mi:ss'), 2, 1100, 9);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (7, 1, to_date('25-03-2017 18:13:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 10, 7);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (10, 1, to_date('25-03-2017 18:20:30', 'dd-mm-yyyy hh24:mi:ss'), 2, 1100, 10);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (11, 1, to_date('25-03-2017 18:20:30', 'dd-mm-yyyy hh24:mi:ss'), 2, 1100, 11);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (12, 1, to_date('25-03-2017 18:20:30', 'dd-mm-yyyy hh24:mi:ss'), 2, 1100, 12);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (13, 1, to_date('25-03-2017 18:20:30', 'dd-mm-yyyy hh24:mi:ss'), 2, 1100, 13);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (16, 1, to_date('25-03-2017 18:33:52', 'dd-mm-yyyy hh24:mi:ss'), 2, 3, 16);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (17, 1, to_date('25-03-2017 18:35:51', 'dd-mm-yyyy hh24:mi:ss'), 2, 13, 17);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (14, 1, to_date('25-03-2017 18:24:29', 'dd-mm-yyyy hh24:mi:ss'), 2, 1100, 14);
insert into ORDERS (id, userid, createtime, state, price, cmid)
values (15, 1, to_date('25-03-2017 18:25:36', 'dd-mm-yyyy hh24:mi:ss'), 2, 1100, 15);
commit;
prompt 15 records loaded
prompt Loading ORDERSCOMMODIFY...
insert into ORDERSCOMMODIFY (id, ocid, num)
values (21, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (21, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (22, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (22, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (23, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (23, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (24, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (24, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (7, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (7, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (8, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (8, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (9, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (9, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (10, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (10, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (11, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (11, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (12, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (12, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (13, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (13, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (16, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (16, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (17, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (17, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (14, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (14, 2, 1);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (15, 1, 2);
insert into ORDERSCOMMODIFY (id, ocid, num)
values (15, 2, 1);
commit;
prompt 30 records loaded
prompt Loading RELATION...
prompt Table is empty
prompt Loading SHOPPINGCART...
insert into SHOPPINGCART (id, shopping, num, price, userid)
values (1, 1, 2, 10, 1);
insert into SHOPPINGCART (id, shopping, num, price, userid)
values (2, 2, 2, 6, 1);
insert into SHOPPINGCART (id, shopping, num, price, userid)
values (3, 3, 4, 6, 2);
commit;
prompt 3 records loaded
prompt Loading TREE...
prompt Table is empty
prompt Loading USERSHOPPING...
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (42, '123234345', '234234234', 'δ�����ǳƣ�', 1, 'δ�����ʼ���', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (62, '121231231', '123123123', '123123', 1, '123123', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (82, '123123123123', '123123123', '123123123', 1, '123123123', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (1, '12123123', '123123', 'werwer', 1, '12312312313', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (3, '345345345', '123123', 'werwer', 1, 'dsfdfsdfsdf', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (4, '456464456', '123123', 'werwer', 1, 'sdfsdfsdf', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (5, '567567567', '234sdfsdf', 'werwer', 1, 'sdfsdfsdf', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (6, '678678678', '234234', 'werwer', 1, 'sdfsdfsdf', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (22, '111111111', '234sdfsdf', 'δ�����ǳƣ�', 1, 'δ�����ʼ���', 11111111111);
insert into USERSHOPPING (id, username, userpwd, nick, userlevel, email, tel)
values (63, '123123123', '123123123', 'nihaoaa', 1, 'asdasdasd', 12345678901);
commit;
prompt 10 records loaded
prompt Enabling triggers for CLASSIFY...
alter table CLASSIFY enable all triggers;
prompt Enabling triggers for COMMODITY...
alter table COMMODITY enable all triggers;
prompt Enabling triggers for ORDERS...
alter table ORDERS enable all triggers;
prompt Enabling triggers for ORDERSCOMMODIFY...
alter table ORDERSCOMMODIFY enable all triggers;
prompt Enabling triggers for RELATION...
alter table RELATION enable all triggers;
prompt Enabling triggers for SHOPPINGCART...
alter table SHOPPINGCART enable all triggers;
prompt Enabling triggers for TREE...
alter table TREE enable all triggers;
prompt Enabling triggers for USERSHOPPING...
alter table USERSHOPPING enable all triggers;
set feedback on
set define on
prompt Done.
