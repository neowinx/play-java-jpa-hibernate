# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table proveedor (
  id                        bigint not null,
  nombre                    varchar(255),
  usuario_id                bigint,
  constraint pk_proveedor primary key (id))
;

create table usuario (
  id                        bigint not null,
  usuario                   varchar(255),
  proveedor_id              bigint,
  constraint pk_usuario primary key (id))
;

create sequence proveedor_seq;

create sequence usuario_seq;

alter table proveedor add constraint fk_proveedor_usuario_1 foreign key (usuario_id) references usuario (id);
create index ix_proveedor_usuario_1 on proveedor (usuario_id);
alter table usuario add constraint fk_usuario_proveedor_2 foreign key (proveedor_id) references proveedor (id);
create index ix_usuario_proveedor_2 on usuario (proveedor_id);



# --- !Downs

drop table if exists proveedor cascade;

drop table if exists usuario cascade;

drop sequence if exists proveedor_seq;

drop sequence if exists usuario_seq;

