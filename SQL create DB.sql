create database fomophobia;

use fomophobia;
create table users (
id integer primary key not null auto_increment,
email varchar(255),
password varchar(255),
username varchar(255),
bio varchar(255),
points integer,
referralcode varchar(255),
created_at timestamp not null default current_timestamp,
updated_at timestamp
);
alter table users add unique(id, email);

create table events (
id integer primary key not null auto_increment,
name varchar(255),
location varchar(255),
venue varchar(255),
category varchar (255),
date_start date,
date_end date,
time_start time,
time_end time,
description varchar(255),
photo varchar(255),
vip_ticket_price integer,
vip_ticket_stock integer,
presale_ticket_price integer,
presale_ticket_stock integer,
normal_ticket_price integer,
normal_ticket_stock integer,
event_creator_userid integer,
isfree tinyint,
posted_at timestamp
);

Create Table tickets (
id integer primary key not null auto_increment,
userid integer,
eventid integer,
ticketcode varchar(255),
ticket_category varchar(255),
ticket_price integer,
issued_at timestamp,
);
alter table tickets add unique (ticketcode);

Create Table discussions (
id integer primary key not null auto_increment,
eventid integer,
userid integer,
question varchar(255),
posted_at timestamp
);

Create Table discussion_reply (
id integer primary key not null auto_increment,
eventid integer,
userid integer,
discussion_id integer,
reply_body varchar(255),
posted_at timestamp
);

Create Table reviews (
id integer primary key not null auto_increment,
eventid integer,
comments varchar(255),
userid integer not null,
ratings integer not null,
posted_at timestamp,
ticketcode varchar(255),
show_name tinyint,
unique (ticketcode)
);

select * from tickets
