--------------------------------------------------------
--  File created - воскресенье-Март-01-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SIC_QUESTION
--------------------------------------------------------

  CREATE TABLE "SIC"."SIC_QUESTION" 
   (	"ID" NUMBER(19,0), 
	"LITERA_ID" NUMBER(19,0), 
	"PREFIX_VHOD_DOC" NUMBER(19,0), 
	"SUFIX_VHOD_DOC" NUMBER(19,0), 
	"REG_DATE" DATE, 
	"SPOSOB_PEREDACHI_ID" NUMBER(19,0), 
	"EXEC_ORG_ID" NUMBER(19,0), 
	"REGISTRATOR_ID" NUMBER(19,0), 
	"QUESTION_VID_ID" NUMBER(19,0), 
	"PLAN_EXEC_DATE" DATE, 
	"CONTENT" VARCHAR2(4000 CHAR), 
	"FORM_VYDACHI_ANS_ID" NUMBER(19,0), 
	"MOTIV_OTKAZ" NUMBER(1,0) DEFAULT 0, 
	"TIP_ZAYAV_ID" NUMBER(19,0), 
	"FAMALY" VARCHAR2(255 CHAR), 
	"NAME" VARCHAR2(255 CHAR), 
	"OTCHESTVO" VARCHAR2(255 CHAR), 
	"COUNTRY" VARCHAR2(255 CHAR), 
	"ADRES" VARCHAR2(255 CHAR), 
	"PHONE" VARCHAR2(255 CHAR), 
	"ORGANIZATION" VARCHAR2(255 CHAR), 
	"CATEGOR_ZAYAV_ID" NUMBER(19,0), 
	"NUM_ISHOD_DOC" VARCHAR2(255 CHAR), 
	"DATE_ISHOD_DOC" DATE, 
	"FIO_KTO_PODPISAL_ISHOD_DOC" VARCHAR2(255 CHAR), 
	"PRILOGENIYA" VARCHAR2(255 CHAR), 
	"NA_KOGO_Q_FAMALY" VARCHAR2(255 CHAR), 
	"NA_KOGO_Q_NAME" VARCHAR2(255 CHAR), 
	"NA_KOGO_Q_OTCHESTVO" VARCHAR2(255 CHAR), 
	"NA_KOGO_Q_GOD_ROJDENIYA" NUMBER(10,0), 
	"NOTI_EXECUTOR_ID" NUMBER(19,0), 
	"TIP_DOCS_ID" NUMBER(19,0), 
	"NOTI_KOMU" VARCHAR2(255 CHAR), 
	"NOTI_DATE" DATE, 
	"NOTI_SPOSOB_PEREDACHI_ID" NUMBER(19,0), 
	"NOTI_DATE_OTPRAVKI_DOC" DATE, 
	"BOSS_EXECUTOR_ID" NUMBER(19,0), 
	"BOSS_EXECUTOR_DATE" DATE, 
	"EXECUTOR_ID" NUMBER(19,0), 
	"EXECUTOR_DATE" DATE, 
	"CONTROL" NUMBER(1,0) DEFAULT 0, 
	"CONTROL_DATE" DATE, 
	"RESOLUTION_AUTHOR" VARCHAR2(255 CHAR), 
	"STORAGE_TERRITORY_ID" NUMBER(19,0), 
	"STORAGE_NAME" VARCHAR2(255 CHAR), 
	"EXEC_DATE" DATE, 
	"NOTI_PRODLENIE" DATE, 
	"ANS_RESULT_ID" NUMBER(19,0), 
	"TEMATIC_ANS_ID" NUMBER(19,0), 
	"RECOMENDATION" VARCHAR2(4000 CHAR), 
	"CAT_SLOJNOSTI_ID" NUMBER(19,0), 
	"NUM_ISHODYACHEGO" VARCHAR2(255 CHAR), 
	"PRIMECHANIE" VARCHAR2(4000 CHAR), 
	"STATUS_ID" NUMBER(19,0), 
	"NOTI_STATUS_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."ID" IS 'Идентификатор';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."LITERA_ID" IS 'Литера';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."PREFIX_VHOD_DOC" IS 'Номер запроса в пределах года';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."SUFIX_VHOD_DOC" IS 'Год оформления запроса';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."REG_DATE" IS 'Дата регистрации';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."SPOSOB_PEREDACHI_ID" IS 'Способ передачи запроса заявителем';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."EXEC_ORG_ID" IS 'Исполняющий архив';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."REGISTRATOR_ID" IS 'Регистратор';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."QUESTION_VID_ID" IS 'Вид запроса';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."PLAN_EXEC_DATE" IS 'Плановая дата исполнения';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."CONTENT" IS 'Содержание запроса';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."FORM_VYDACHI_ANS_ID" IS 'Форма выдачи ответа';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."MOTIV_OTKAZ" IS 'Мотивированный отказ';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."TIP_ZAYAV_ID" IS 'Тип заявителя';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."FAMALY" IS 'Фамилия (для физического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NAME" IS 'Имя (для физического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."OTCHESTVO" IS 'Отчество (для физического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."COUNTRY" IS 'Страна';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."ADRES" IS 'Адрес';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."PHONE" IS 'Телефон';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."ORGANIZATION" IS 'Организация  (для юридического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."CATEGOR_ZAYAV_ID" IS 'Категория заявителя (для юридического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NUM_ISHOD_DOC" IS 'Номер исходящего документа  (для юридического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."DATE_ISHOD_DOC" IS 'Дата исходящего документа  (для юридического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."FIO_KTO_PODPISAL_ISHOD_DOC" IS 'ФИО кто подписал ид  (для юридического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."PRILOGENIYA" IS 'Приложения  (для юридического лица)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NA_KOGO_Q_FAMALY" IS 'Фамилия на кого запрос';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NA_KOGO_Q_NAME" IS 'Имя на кого запрос';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NA_KOGO_Q_OTCHESTVO" IS 'Отчество на кого запрос';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NA_KOGO_Q_GOD_ROJDENIYA" IS 'Год рождения на кого запрос';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NOTI_EXECUTOR_ID" IS 'Исполнитель уведомления';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."TIP_DOCS_ID" IS 'Тип документов';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NOTI_KOMU" IS 'Кому (обращение в уведомлении)';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NOTI_DATE" IS 'Дата уведомления';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NOTI_SPOSOB_PEREDACHI_ID" IS 'Способ передачи уведомления';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NOTI_DATE_OTPRAVKI_DOC" IS 'Дата отправки уведомления';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."BOSS_EXECUTOR_ID" IS 'Отвественный исполнитель';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."BOSS_EXECUTOR_DATE" IS 'Дата ответственного исполнителя';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."EXECUTOR_ID" IS 'Исполнитель';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."EXECUTOR_DATE" IS 'Дата исполнителя';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."CONTROL" IS 'Контроль';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."CONTROL_DATE" IS 'Контольная дата';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."RESOLUTION_AUTHOR" IS 'Автор резолюции';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."STORAGE_TERRITORY_ID" IS 'Территория хранилища';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."STORAGE_NAME" IS 'Название хранилища';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."EXEC_DATE" IS 'Дата исполнения';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NOTI_PRODLENIE" IS 'Уведомление о продлении срока исполнения';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."ANS_RESULT_ID" IS 'Результат ответа';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."TEMATIC_ANS_ID" IS 'Тематика ответа';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."RECOMENDATION" IS 'Рекомендации в случае отрицательного ответа';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."CAT_SLOJNOSTI_ID" IS 'Категория сложности';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NUM_ISHODYACHEGO" IS 'Номер исходящего документа';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."PRIMECHANIE" IS 'Примечание';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."STATUS_ID" IS 'Статус запроса';
 
   COMMENT ON COLUMN "SIC"."SIC_QUESTION"."NOTI_STATUS_ID" IS 'Статус уведомления';
--------------------------------------------------------
--  DDL for Index SYS_C0012961
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIC"."SYS_C0012961" ON "SIC"."SIC_QUESTION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIC_QUESTION_INDEX1
--------------------------------------------------------

  CREATE INDEX "SIC"."SIC_QUESTION_INDEX1" ON "SIC"."SIC_QUESTION" ("REG_DATE" DESC) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIC_QUESTION_INDEX2
--------------------------------------------------------

  CREATE INDEX "SIC"."SIC_QUESTION_INDEX2" ON "SIC"."SIC_QUESTION" ("PREFIX_VHOD_DOC" DESC) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIC_QUESTION_INDEX3
--------------------------------------------------------

  CREATE INDEX "SIC"."SIC_QUESTION_INDEX3" ON "SIC"."SIC_QUESTION" ("SUFIX_VHOD_DOC" DESC) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SIC_QUESTION_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIC"."SIC_QUESTION_UK1" ON "SIC"."SIC_QUESTION" ("LITERA_ID", "PREFIX_VHOD_DOC", "SUFIX_VHOD_DOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SIC_QUESTION
--------------------------------------------------------

  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_UK1" UNIQUE ("LITERA_ID", "PREFIX_VHOD_DOC", "SUFIX_VHOD_DOC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SIC_QUESTION
--------------------------------------------------------

  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK1" FOREIGN KEY ("LITERA_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK10" FOREIGN KEY ("TIP_DOCS_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK11" FOREIGN KEY ("NOTI_SPOSOB_PEREDACHI_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK12" FOREIGN KEY ("BOSS_EXECUTOR_ID")
	  REFERENCES "SIC"."ADM_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK13" FOREIGN KEY ("EXECUTOR_ID")
	  REFERENCES "SIC"."ADM_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK14" FOREIGN KEY ("STORAGE_TERRITORY_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK15" FOREIGN KEY ("ANS_RESULT_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK16" FOREIGN KEY ("TEMATIC_ANS_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK17" FOREIGN KEY ("CAT_SLOJNOSTI_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK18" FOREIGN KEY ("STATUS_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK19" FOREIGN KEY ("NOTI_STATUS_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK2" FOREIGN KEY ("SPOSOB_PEREDACHI_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK3" FOREIGN KEY ("EXEC_ORG_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK4" FOREIGN KEY ("REGISTRATOR_ID")
	  REFERENCES "SIC"."ADM_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK5" FOREIGN KEY ("QUESTION_VID_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK6" FOREIGN KEY ("FORM_VYDACHI_ANS_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK7" FOREIGN KEY ("TIP_ZAYAV_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK8" FOREIGN KEY ("CATEGOR_ZAYAV_ID")
	  REFERENCES "SIC"."DESCRIPTOR_VALUE" ("DESCRIPTOR_VALUE_ID") ENABLE;
 
  ALTER TABLE "SIC"."SIC_QUESTION" ADD CONSTRAINT "SIC_QUESTION_FK9" FOREIGN KEY ("NOTI_EXECUTOR_ID")
	  REFERENCES "SIC"."ADM_USER" ("USER_ID") ENABLE;
