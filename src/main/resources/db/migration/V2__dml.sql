insert into gb_role (id, name, description, status, created_by, created_at)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', 'ADMIN', 'Yönetici', 'ACTIVE',
        'gelecekbilimde', current_timestamp);
insert into gb_role (id, name, description, status, created_by, created_at)
values ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', 'MODERATOR', 'Moderatör', 'ACTIVE',
        'gelecekbilimde', current_timestamp);
insert into gb_role (id, name, description, status, created_by, created_at)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', 'AUTHOR', 'Yazar', 'ACTIVE',
        'gelecekbilimde', current_timestamp);
insert into gb_role (id, name, description, status, created_by, created_at)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', 'USER', 'Kullanıcı', 'ACTIVE',
        'gelecekbilimde', current_timestamp);


insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('836e0a9c-b2bb-4ecf-bf8b-870ea7bb8bc7', 'Yönetici Paneline Erişir',
        'panel:admin', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('1a5b4eae-835c-4a8b-95b4-1875b65cf7d9', 'Kullanıcı Ekler',
        'user:create', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('3f6f18f3-ba3d-4f3a-b4c3-4681c7e42d6f', 'Kullanıcı Siler',
        'user:delete', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('5b27d86c-ae00-49c2-8adc-07ed762920ce', 'Kullanıcı Takip Eder',
        'user:follow', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('e7c0ddb6-5371-449f-841e-65b14f53f200', 'Kullanıcı Takip Edeni Görür',
        'user:follow:read', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('9c032c81-5c0e-4d08-b3a6-e7d524b354cb', 'Gönderi Paylaşır',
        'post:create', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('55e3ef7a-2a1a-4c5b-8d72-3bd1e2c6560b', 'Gönderisini Düzenler',
        'post:update', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('35bc91b4-3b92-4ff5-b204-439ef21d2d94', 'Gönderisini Siler',
        'post:delete', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('01bc1089-bd27-4b41-bfde-8e63c988fec3', 'Gönderi Beğenir',
        'post:like', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('6842cfea-0568-4970-af2e-bc9e3f7ed2cf', 'Yorum Yapar',
        'comment:create', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('d16020f2-1331-4e2f-94aa-7f6d08b6e157', 'Yorum Beğenir',
        'comment:like', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('0150a560-8536-427e-8e76-fb1f6d41f5e7', 'Kendi Çağrısı Kayıtlarını Listeler',
        'self:ticket:read', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('b7c4f0d1-3f0e-46aa-9c02-ee7e7cbf49bb', 'Bütün Çağrı Kayıtlarını Listeler',
        'ticket:read', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('1bb69fdf-d470-4c37-8075-58ff0fa0d19e', 'Çağrı Kaydı Oluşturur',
        'self:ticket:create', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('7572d942-b048-40bf-8cf4-c7a87d9be586', 'Çağrı Kaydını Günceller',
        'ticket:update', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('f8217f8d-8d67-496f-8761-53201e690078', 'Profil Düzenler',
        'profile:edit', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('0352ee79-e844-4e91-968f-c9f3e4a27515', 'Rol Başvurularını Listeler',
        'role:application:list', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('31366d9d-5282-4fe2-9d45-4551e114bc7d', 'Rol Başvurusunu Sonuçlandırır',
        'role:application:conclude', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('2902d3c0-040e-47f6-b894-e72484252a0a', 'Kendi Adına Var Olan Rol Başvurularını Listeler',
        'role:application:list:self', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('edfb8180-92ef-4a9e-8913-1bdfa606d297', 'Yazar Olmak İçin Kendi Adına Rol Başvurusu Oluşturur',
        'role:application:create:self:author', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('171ca9a7-311d-40b6-b538-024b5870471a', 'Moderatör Olmak İçin Kendi Adına Rol Başvurusu Oluşturur',
        'role:application:create:self:moderator', false, 'gelecekbilimde', current_timestamp);
insert into gb_permission (id, description, name, is_hidden, created_by, created_at)
values ('d7a49ea4-fae1-4dac-8e07-c1d823841b50', 'Kendi Adına Var Olan Rol Başvurusunu İptal Eder',
        'role:application:cancel:self', false, 'gelecekbilimde', current_timestamp);


insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '836e0a9c-b2bb-4ecf-bf8b-870ea7bb8bc7');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '1a5b4eae-835c-4a8b-95b4-1875b65cf7d9');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '3f6f18f3-ba3d-4f3a-b4c3-4681c7e42d6f');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '9c032c81-5c0e-4d08-b3a6-e7d524b354cb');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '55e3ef7a-2a1a-4c5b-8d72-3bd1e2c6560b');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '35bc91b4-3b92-4ff5-b204-439ef21d2d94');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', 'b7c4f0d1-3f0e-46aa-9c02-ee7e7cbf49bb');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '7572d942-b048-40bf-8cf4-c7a87d9be586');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '0352ee79-e844-4e91-968f-c9f3e4a27515');
insert into gb_role_permission (role_id, permission_id)
values ('c147b5c2-87f7-4bb7-a165-368f639d8c3c', '31366d9d-5282-4fe2-9d45-4551e114bc7d');

INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', '9c032c81-5c0e-4d08-b3a6-e7d524b354cb');
INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', '55e3ef7a-2a1a-4c5b-8d72-3bd1e2c6560b');
INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', '35bc91b4-3b92-4ff5-b204-439ef21d2d94');
INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', '6842cfea-0568-4970-af2e-bc9e3f7ed2cf');
INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', 'd16020f2-1331-4e2f-94aa-7f6d08b6e157');
insert into gb_role_permission (role_id, permission_id)
values ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', '01bc1089-bd27-4b41-bfde-8e63c988fec3');
insert into gb_role_permission (role_id, permission_id)
values ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', '0150a560-8536-427e-8e76-fb1f6d41f5e7');
insert into gb_role_permission (role_id, permission_id)
values ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', '1bb69fdf-d470-4c37-8075-58ff0fa0d19e');
insert into gb_role_permission (role_id, permission_id)
values ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', '5b27d86c-ae00-49c2-8adc-07ed762920ce');
insert into gb_role_permission (role_id, permission_id)
values ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', 'e7c0ddb6-5371-449f-841e-65b14f53f200');
insert into gb_role_permission (role_id, permission_id)
values ('1ed82a25-d348-4576-b4e6-1f2a7c430ca7', 'f8217f8d-8d67-496f-8761-53201e690078');

INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '9c032c81-5c0e-4d08-b3a6-e7d524b354cb');
INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '55e3ef7a-2a1a-4c5b-8d72-3bd1e2c6560b');
INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '6842cfea-0568-4970-af2e-bc9e3f7ed2cf');
INSERT INTO gb_role_permission (role_id, permission_id)
VALUES ('4d98a76c-9841-4aea-b296-2f27aa610b6c', 'd16020f2-1331-4e2f-94aa-7f6d08b6e157');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '01bc1089-bd27-4b41-bfde-8e63c988fec3');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '0150a560-8536-427e-8e76-fb1f6d41f5e7');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '1bb69fdf-d470-4c37-8075-58ff0fa0d19e');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '5b27d86c-ae00-49c2-8adc-07ed762920ce');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', 'e7c0ddb6-5371-449f-841e-65b14f53f200');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', 'f8217f8d-8d67-496f-8761-53201e690078');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '171ca9a7-311d-40b6-b538-024b5870471a');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', 'd7a49ea4-fae1-4dac-8e07-c1d823841b50');
insert into gb_role_permission (role_id, permission_id)
values ('4d98a76c-9841-4aea-b296-2f27aa610b6c', '2902d3c0-040e-47f6-b894-e72484252a0a');

insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', '01bc1089-bd27-4b41-bfde-8e63c988fec3');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', '6842cfea-0568-4970-af2e-bc9e3f7ed2cf');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', 'd16020f2-1331-4e2f-94aa-7f6d08b6e157');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', '0150a560-8536-427e-8e76-fb1f6d41f5e7');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', '1bb69fdf-d470-4c37-8075-58ff0fa0d19e');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', '5b27d86c-ae00-49c2-8adc-07ed762920ce');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', 'e7c0ddb6-5371-449f-841e-65b14f53f200');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', 'f8217f8d-8d67-496f-8761-53201e690078');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', 'edfb8180-92ef-4a9e-8913-1bdfa606d297');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', 'd7a49ea4-fae1-4dac-8e07-c1d823841b50');
insert into gb_role_permission (role_id, permission_id)
values ('e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', '2902d3c0-040e-47f6-b894-e72484252a0a');



insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (0, 1, 'Fizik', 'Fizik kategorisidir.', 'fizik', null,
        'gelecekbilimde', current_timestamp);
insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (1, 1, 'Biyoloji', 'Biyoloji kategorisidir.', 'biyoloji', null,
        'gelecekbilimde', current_timestamp);
insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (2, 1, 'Kimya', 'Kimya kategorisidir.', 'kimya', null,
        'gelecekbilimde', current_timestamp);
insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (1, null, 'Teknoloji', 'Teknoloji kategorisidir.', 'teknoloji', 'cpu',
        'gelecekbilimde', current_timestamp);
insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (2, null, 'Felsefe', 'Felsefe kategorisidir.', 'felsefe', 'book',
        'gelecekbilimde', current_timestamp);
insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (1, 6, 'Ontoloji', 'Ontoloji kategorisidir.', 'ontoloji', null,
        'gelecekbilimde', current_timestamp);
insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (2, 6, 'Ahlak Felsefesi', 'Ahlak Felsefesi kategorisidir.', 'ahlak-felsefesi', null,
        'gelecekbilimde', current_timestamp);
insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (0, 6, 'Epistemoloji', 'Epistemoloji kategorisidir.', 'epistemoloji', null,
        'gelecekbilimde', current_timestamp);
insert into gb_category (order_number, parent_id, name, description, slug, icon, created_by, created_at)
values (0, null, 'Bilim', 'Bilim kategorisidir.', 'bilim', 'flask-conical',
        'gelecekbilimde', current_timestamp);


insert into gb_user (id, birth_date, email, gender, first_name, last_name, password,
                     status, role_id, created_by, created_at)
values ('22afc9b4-807f-4eb2-b286-788631d1ed55', current_date, 'admin@gelecekbilimde.net',
        'FEMALE', 'Test', 'Yönetici',
        '$2a$10$atVE.cT5YpEOS7ZLSoVdk.QKVyYBCgvNhvQEuCcXbEMpohYIjbZDG', 'VERIFIED',
        'c147b5c2-87f7-4bb7-a165-368f639d8c3c', 'gelecekbilimde', current_timestamp);

insert into gb_user (id, birth_date, email, gender, first_name, last_name, password,
                     status, role_id, created_by, created_at)
values ('99af408c-bec9-4cf2-a5ea-218b12b88a50', current_date, 'moderator@gelecekbilimde.net',
        'FEMALE', 'Test', 'Moderatör',
        '$2a$10$atVE.cT5YpEOS7ZLSoVdk.QKVyYBCgvNhvQEuCcXbEMpohYIjbZDG', 'VERIFIED',
        '1ed82a25-d348-4576-b4e6-1f2a7c430ca7', 'gelecekbilimde', current_timestamp);

insert into gb_user (id, birth_date, email, gender, first_name, last_name, password,
                     status, role_id, created_by, created_at)
values ('fee95298-952d-4d1c-81dd-ae5a96b964e5', current_date, 'author@gelecekbilimde.net',
        'MALE', 'Test', 'Yazar',
        '$2a$10$atVE.cT5YpEOS7ZLSoVdk.QKVyYBCgvNhvQEuCcXbEMpohYIjbZDG', 'VERIFIED',
        '4d98a76c-9841-4aea-b296-2f27aa610b6c', 'gelecekbilimde', current_timestamp);

insert into gb_user (id, birth_date, email, gender, first_name, last_name, password,
                     status, role_id, created_by, created_at)
values ('233d4054-e7b9-43ba-8b26-ca9254df78cd', current_date, 'user@gelecekbilimde.net',
        'MALE', 'Test', 'Kullanıcı',
        '$2a$10$atVE.cT5YpEOS7ZLSoVdk.QKVyYBCgvNhvQEuCcXbEMpohYIjbZDG', 'VERIFIED',
        'e3a1a32d-fcd7-46f0-bb2b-201df6b2b808', 'gelecekbilimde', current_timestamp);
