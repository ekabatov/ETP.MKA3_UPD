INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote,efproute) VALUES ('mka3_upd', 1010, '081401', null, true, 'Заявление подано', 'Указанные сведения будут проверены на корректность заполнения обязательных полей. В случае положительного результата проверки заявление будет зарегистрировано.', true);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote,efproute) VALUES ('mka3_upd', 103099, '081401', null, true, 'Технический сбой', null, true);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote,efproute) VALUES ('mka3_upd', 1040, '081401', null, false, 'Заявление доставлено в ведомство', null, false);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote,efproute) VALUES ('mka3_upd', 1050, '081401', null, true, 'Заявление зарегистрировано', null, true);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote,efproute) VALUES ('mka3_upd', 7704, '081401', null, false, 'Запрос сведений по МВ направлен', null, false);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote,efproute) VALUES ('mka3_upd', 7705, '081401', null, false, 'Сведения на запрос по МВ получены', null, false);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote,efproute) VALUES ('mka3_upd', 1080, '081401', null, true, 'Отказ в предоставлении услуги', null, true);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote,efproute) VALUES ('mka3_upd', 1075, '081401', null, true, 'Услуга оказана. Решение положительное', null, true);

INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 1010, '063001', null, true, 'Заявление подано', 'Указанные сведения будут проверены на корректность заполнения обязательных полей. В случае положительного результата проверки заявление будет зарегистрировано.');
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 103099, '063001', null, true, 'Технический сбой', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 1040, '063001', null, false, 'Заявление доставлено в ведомство', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 1050, '063001', null, true, 'Заявление зарегистрировано', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 7704, '063001', null, false, 'Запрос сведений по МВ направлен', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 7705, '063001', null, false, 'Сведения на запрос по МВ получены', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 1052, '063001', null, false, 'Формирование результата', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 1075, '063001', 1, true, 'Услуга оказана. Решение положительное', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 1075, '063001', 2, true, 'Услуга оказана. Решение отрицательное', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 7700, '063001', null, true, 'Результат выдан заявителю в ведомстве', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 10090, '063001', null, false, 'Доступен отзыв заявления', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 1069, '063001', null, true, 'Запрос на отзыв по инициативе заявителя', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 10190, '063001', null, false, 'Отзыв заявления недоступен', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 1090, '063001', null, true, 'Заявление отозвано', null);
INSERT INTO statusroute (service,statuscode,formid,reasoncode,mpguroute,mpgulabel,mpgunote) VALUES ('mka3_upd', 116999, '063001', null, true, 'Технический сбой', null);

UPDATE statusroute SET efproute = mpguroute WHERE formid = '063001';