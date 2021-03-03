INSERT INTO etp_service (formid,service,description,created,started) VALUES ('081401','mka3_upd','Направление и рассмотрение требований об отображении в правилах землепользования и застройки города Москвы границ зон с особыми условиями использования территорий, границ территорий объектов культурного наследия',null,null);

DELETE FROM etp_service WHERE formid = '063001';
INSERT INTO etp_service (formid,service,description,created,started) VALUES ('063001','mka3_upd','Направление предложений о внесении изменений в правила землепользования и застройки города Москвы',null,null);

INSERT INTO efspsignservice_converter (servicetypecode,dstq,dstqmgr,documentclass,printrequired,msgtype) VALUES ('081401','ETP.CNV.LOOPBACK',null,'ApplicationForRenderingStateServiceV6_1',true,'CoordinateMessage');

DELETE FROM efspsignservice_converter WHERE servicetypecode = '063001';
INSERT INTO efspsignservice_converter (servicetypecode,dstq,dstqmgr,documentclass,printrequired,msgtype) VALUES ('063001','ETP.CNV.LOOPBACK',null,'ApplicationForRenderingStateServiceV6_1',true,'CoordinateMessage');
INSERT INTO efspsignservice_converter (servicetypecode,dstq,dstqmgr,documentclass,printRequired,msgType) VALUES ('063001','ETP.CNV.LOOPBACK',null,'AdditionalActionAccordingToStatementInFormatV6_1', false, 'CoordinateStatusMessage');

INSERT INTO efsprequestroute (servicecode, dstq, re) VALUES ('081401','MKA3_UPD.ETP.REQUEST_V61',TRUE);
INSERT INTO efsprequestroute (servicecode, dstq, re) VALUES ('063001','MKA3_UPD.ETP.REQUEST_V61',TRUE);
INSERT INTO efspstatusroute (servicecode, dstq, re) VALUES('063001', 'MKA3_UPD.ETP.STATUS_V61', TRUE);

CREATE SEQUENCE nm_mka3_upd_seq START 1; 

CREATE TABLE nm_mka3_upd
(
   mid int PRIMARY KEY NOT NULL,
   applicationid bigint NOT NULL,
   servicenumber varchar(64) NOT NULL,
   created timestamp DEFAULT now(),
   ssoid varchar(64),
   msgid varchar(128),
   put timestamp,
   signserviceid bigint
);

CREATE UNIQUE INDEX applicationid_mka3_upd_ui ON nm_mka3_upd(applicationid);
CREATE UNIQUE INDEX servicenumber_mka3_upd_ui ON nm_mka3_upd(servicenumber);

CREATE SEQUENCE status_mka3_upd_seq START 1; 

CREATE TABLE status_mka3_upd
(
   id int PRIMARY KEY NOT NULL,
   servicenumber varchar(64),
   statuscode int,
   created timestamp DEFAULT now(),
   msgid varchar(128),
   put timestamp,
   direction varchar(8) DEFAULT 'out'::character varying NOT NULL,
   reasoncode varchar(64),
   route bool DEFAULT true,
   signserviceid bigint
);