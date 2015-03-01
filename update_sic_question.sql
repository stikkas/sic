--------------------------------------------------------
--  File created - воскресенье-Март-01-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure UPDATE_SIC_QUESTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SIC"."UPDATE_SIC_QUESTION" AS 
BEGIN
  delete from SIC_QUESTION;
  for it in (select qq_question.question_id as id,
                    CONTENT,
                    PREFIX_NUM,
                    MOTIVATED_REFUSAL,

                    OBJECT_MNAME,
                    OBJECT_FNAME,
                    OBJECT_LNAME,
                    OBJECT_BIRTHYEAR,
                    ANSWER_FORM_TYPE_ID,
                    EXEC_ORG_ID,
                    LITERA_ID,
                    QUESTION_TYPE_ID,
                    REGISTRATOR_ID,
                    STATUS_ID,
                    TRANSFER_TYPE_ID,
                    SUFIX_NUM,
                    NOTIFY_STATUS_ID,
                    APPENDS,
                    ADDRESS,
                    ORGANIZATION,
                    COUNTRY,
                    MIDDLE_NAME,

                    ISSUE_DOC_NUM,
                    FIRST_NAME,
                    FIO_JUR_PERSON,
                    PHONE,
                    LAST_NAME,
                    APPLICANT_CATEGORY_ID,
                    APPLICANT_TYPE_ID,

                    DELIVERY_TYPE_ID,
                    DOC_TYPE_ID,
                    qq_notification.EXECUTOR_ID as noti_exec_id,

                    TO_WHOM,
                    CONTROL,
                    RESOLUTION_AUTHOR,
                    
                    STORAGE_NAME,
                    qq_transmission.EXECUTOR_ID as executor_id,
                    BOSS_EXECUTOR_ID,
                    STORAGE_TERRITORY_ID,
                    ANSWER_RESULT_ID,
                    CATEGORY_COMPLEXITY_ID,
                    USAGE_ANSWER_ID,                  
                    REFERENCE,
                    REMARK,
                    ISSUE_NUMBER,
                    qq_execution.RENEWAL_NOTICE as RENEWAL_NOTICE,
                    EXEC_DATE,
                    ISSUE_DATE,
                    NOTIFICATION_DATE,
                    ISSUE_DOC_DATE,
                    PLANNED_FINISH_DATE,
                    REG_DATE,CONTROL_DATE,
                    EXECUTION_DATE,
                    BOSS_EXECUTION_DATE
  from qq_question LEFT OUTER JOIN qq_applicant on
  qq_question.QUESTION_ID = qq_applicant.QUESTION_ID
 LEFT OUTER JOIN qq_transmission on
 qq_question.QUESTION_ID = qq_transmission.QUESTION_ID
 LEFT OUTER JOIN qq_notification on
 qq_question.QUESTION_ID = qq_notification.QUESTION_ID
  LEFT OUTER JOIN qq_execution on 
  qq_question.QUESTION_ID = qq_execution.QUESTION_ID
  LEFT OUTER JOIN QQ_WAY_TO_SEND on
  qq_question.QUESTION_ID = qq_way_to_send.QUESTION_ID) LOOP
      INSERT INTO sic_question(ID,
                              LITERA_ID,
                              PREFIX_VHOD_DOC,
                              SUFIX_VHOD_DOC,
                              
                              SPOSOB_PEREDACHI_ID,
                              EXEC_ORG_ID,
                              REGISTRATOR_ID,
                              QUESTION_VID_ID,
                              
                              CONTENT,
                              FORM_VYDACHI_ANS_ID,
                              MOTIV_OTKAZ,
                              TIP_ZAYAV_ID,
                              FAMALY,
                              NAME,
                              OTCHESTVO,
                              COUNTRY,
                              ADRES,
                              PHONE,
                              ORGANIZATION,
                              CATEGOR_ZAYAV_ID,
                              NUM_ISHOD_DOC,
                             
                              FIO_KTO_PODPISAL_ISHOD_DOC,
                              PRILOGENIYA,
                              NA_KOGO_Q_FAMALY,
                              NA_KOGO_Q_NAME,
                              NA_KOGO_Q_OTCHESTVO,
                              NA_KOGO_Q_GOD_ROJDENIYA,
                              NOTI_EXECUTOR_ID,
                              TIP_DOCS_ID,
                              NOTI_KOMU,
                             
                              NOTI_SPOSOB_PEREDACHI_ID,
                              
                              BOSS_EXECUTOR_ID,
                             
                              EXECUTOR_ID,
                             
                              CONTROL,
                             
                              RESOLUTION_AUTHOR,
                              STORAGE_TERRITORY_ID,
                              STORAGE_NAME,

                              ANS_RESULT_ID,
                              TEMATIC_ANS_ID,
                              RECOMENDATION,
                              CAT_SLOJNOSTI_ID,
                              NUM_ISHODYACHEGO,
                              PRIMECHANIE,
                              STATUS_ID,
                              NOTI_STATUS_ID,
                              NOTI_PRODLENIE,
                              REG_DATE,
                              PLAN_EXEC_DATE,
                              DATE_ISHOD_DOC,
                              NOTI_DATE,
                              NOTI_DATE_OTPRAVKI_DOC,
                              BOSS_EXECUTOR_DATE,
                              EXECUTOR_DATE,
                              CONTROL_DATE,
                              EXEC_DATE
                              )
     VALUES(it.id, it.litera_id, it.prefix_num, it.sufix_num, 
            it.transfer_type_id, it.exec_org_id, it.registrator_id,
            it.question_type_id,  it.CONTENT,
            it.ANSWER_FORM_TYPE_ID, it.MOTIVATED_REFUSAL, it.APPLICANT_TYPE_ID,
            it.LAST_NAME, it.FIRST_NAME, it.MIDDLE_NAME, it.COUNTRY,
            it.ADDRESS, it.PHONE, it.ORGANIZATION, it.APPLICANT_CATEGORY_ID,
            it.ISSUE_DOC_NUM,  it.FIO_JUR_PERSON,
            it.APPENDS, it.OBJECT_LNAME, it.OBJECT_FNAME, it.OBJECT_MNAME,
            it.OBJECT_BIRTHYEAR, it.noti_exec_id, it.DOC_TYPE_ID,
            it.TO_WHOM, it.DELIVERY_TYPE_ID,
            it.BOSS_EXECUTOR_ID, it.EXECUTOR_ID,  it.CONTROL, 
            it.RESOLUTION_AUTHOR,it.STORAGE_TERRITORY_ID,it.STORAGE_NAME,
            it.ANSWER_RESULT_ID,it.USAGE_ANSWER_ID,
            it.REFERENCE,it.CATEGORY_COMPLEXITY_ID,it.ISSUE_NUMBER,it.REMARK,
            it.STATUS_ID,it.NOTIFY_STATUS_ID,
            it.RENEWAL_NOTICE,
            it.reg_date, it.PLANNED_FINISH_DATE, it.ISSUE_DOC_DATE, 
            it.NOTIFICATION_DATE,it.ISSUE_DATE,it.BOSS_EXECUTION_DATE,
            it.EXECUTION_DATE,it.CONTROL_DATE,it.EXEC_DATE);
  END LOOP;
END UPDATE_SIC_QUESTION;

/
