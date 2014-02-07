# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table persona (
  id                        bigint not null,
  documento                 varchar(255),
  apellidos                 varchar(255),
  nombres                   varchar(255),
  usuario_id                bigint,
  constraint pk_persona primary key (id))
;

create table proveedor (
  id                        bigint not null,
  nombre                    varchar(255),
  constraint pk_proveedor primary key (id))
;

create table usuario (
  id                        bigint not null,
  usuario                   varchar(255),
  persona_id                bigint,
  proveedor_id              bigint,
  constraint pk_usuario primary key (id))
;

create sequence persona_seq;

create sequence proveedor_seq;

create sequence usuario_seq;

alter table persona add constraint fk_persona_usuario_1 foreign key (usuario_id) references usuario (id) on delete restrict on update restrict;
create index ix_persona_usuario_1 on persona (usuario_id);
alter table usuario add constraint fk_usuario_persona_2 foreign key (persona_id) references persona (id) on delete restrict on update restrict;
create index ix_usuario_persona_2 on usuario (persona_id);
alter table usuario add constraint fk_usuario_proveedor_3 foreign key (proveedor_id) references proveedor (id) on delete restrict on update restrict;
create index ix_usuario_proveedor_3 on usuario (proveedor_id);



# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists persona;

drop table if exists proveedor;

drop table if exists usuario;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists persona_seq;

drop sequence if exists proveedor_seq;

drop sequence if exists usuario_seq;

