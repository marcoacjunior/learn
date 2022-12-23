INSERT INTO tb_user (name, email, password) VALUES ('Alex','alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob','bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria','maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Front-end', 'https://www.publicdomainpictures.net/pictures/390000/velka/course-introduction.jpg', 'https://cdn-icons-png.flaticon.com/512/2000/2000887.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-07-14T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-07-14T03:00:00Z',1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-08-14T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-08-14T03:00:00Z',1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML','Trilha Principal',1,'https://www.publicdomainpictures.net/pictures/390000/velka/course-introduction.jpg',1,1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum','Tire suas duvidas',2,'https://www.publicdomainpictures.net/pictures/390000/velka/course-introduction.jpg',2,1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives','Lives exclusivas prara a turma',3,'https://www.publicdomainpictures.net/pictures/390000/velka/course-introduction.jpg',0,1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1','Neste capítulo iremos começar...',1,'https://www.publicdomainpictures.net/pictures/390000/velka/course-introduction.jpg',1,null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2','Neste capítulo iremos continuar...',2,'https://www.publicdomainpictures.net/pictures/390000/velka/course-introduction.jpg',1,1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3','Neste capítulo iremos finalizar...',3,'https://www.publicdomainpictures.net/pictures/390000/velka/course-introduction.jpg',1,2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-07-14T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-07-14T13:30:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1,'Material de apoio: abc', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2,'', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3,'', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'fazer tarefa', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-07-25T13:30:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);