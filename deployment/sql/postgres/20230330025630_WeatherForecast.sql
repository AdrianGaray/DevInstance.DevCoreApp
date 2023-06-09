START TRANSACTION;

ALTER TABLE "UserProfiles" ALTER COLUMN "UpdateDate" TYPE timestamp with time zone;

ALTER TABLE "UserProfiles" ALTER COLUMN "CreateDate" TYPE timestamp with time zone;

CREATE TABLE "WeatherForecasts" (
    "Id" uuid NOT NULL,
    "Date" timestamp with time zone NOT NULL,
    "Temperature" integer NOT NULL,
    "Summary" text NULL,
    "PublicId" text NOT NULL,
    "CreateDate" timestamp with time zone NOT NULL,
    "UpdateDate" timestamp with time zone NOT NULL,
    "CreatedById" uuid NULL,
    "UpdatedById" uuid NULL,
    CONSTRAINT "PK_WeatherForecasts" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_WeatherForecasts_UserProfiles_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "UserProfiles" ("Id"),
    CONSTRAINT "FK_WeatherForecasts_UserProfiles_UpdatedById" FOREIGN KEY ("UpdatedById") REFERENCES "UserProfiles" ("Id")
);

INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('05aa36a6-2b4b-45d6-9ea3-a5cde47dd63c', TIMESTAMPTZ '2023-03-29 19:56:30.071655Z', NULL, TIMESTAMPTZ '2023-05-06 19:56:30.071655Z', '8650d8j378q744a48ad8n3fc1084p1n7', 'Mild', -1, TIMESTAMPTZ '2023-03-29 19:56:30.071656Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('05e33a3f-adb8-45f9-8b31-fd3164e1ec30', TIMESTAMPTZ '2023-03-29 19:56:30.071644Z', NULL, TIMESTAMPTZ '2023-05-01 19:56:30.071644Z', 'pflbi9g5v16472d4h9r7ececa2rf50q9', 'Bracing', 24, TIMESTAMPTZ '2023-03-29 19:56:30.071644Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('0c83aa6f-0c68-4f97-8b36-658b7e296bbc', TIMESTAMPTZ '2023-03-29 19:56:30.071619Z', NULL, TIMESTAMPTZ '2023-04-21 19:56:30.071619Z', 'f6f4m1hfibt5pff458bei7b446deq9m7', 'Scorching', 43, TIMESTAMPTZ '2023-03-29 19:56:30.071619Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('0f3ea382-bd33-499b-8647-64087e69289d', TIMESTAMPTZ '2023-03-29 19:56:30.071597Z', NULL, TIMESTAMPTZ '2023-04-12 19:56:30.071597Z', 'c8161aaebaaeb654k9ub86f214l3ibh5', 'Cool', -10, TIMESTAMPTZ '2023-03-29 19:56:30.071597Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('0f63973b-e6e9-4e1d-8d15-c092aaf254e8', TIMESTAMPTZ '2023-03-29 19:56:30.071762Z', NULL, TIMESTAMPTZ '2023-06-22 19:56:30.071762Z', 'e0dcv1ob4ak1b2b4v942rdf8qf12f0g5', 'Sweltering', 14, TIMESTAMPTZ '2023-03-29 19:56:30.071762Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('0fa73f0e-8cee-4b76-83da-4f47f71dbf93', TIMESTAMPTZ '2023-03-29 19:56:30.071643Z', NULL, TIMESTAMPTZ '2023-04-30 19:56:30.071642Z', 's5dc4et158s5s974t9g9o5eetd54q7q1', 'Freezing', -17, TIMESTAMPTZ '2023-03-29 19:56:30.071643Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('10e2e47d-4e6e-4aee-a9e4-dcd8c6a3cb79', TIMESTAMPTZ '2023-03-29 19:56:30.071604Z', NULL, TIMESTAMPTZ '2023-04-15 19:56:30.071604Z', 'j3jf0a86j7p3udc468fem3obt3s1davf', 'Chilly', 4, TIMESTAMPTZ '2023-03-29 19:56:30.071604Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('12f25e22-b958-42e8-8283-4d07a31f2f9b', TIMESTAMPTZ '2023-03-29 19:56:30.071775Z', NULL, TIMESTAMPTZ '2023-06-28 19:56:30.071775Z', 'q92ej3l1s9hf2a64kb1864t73cpfc446', 'Warm', 14, TIMESTAMPTZ '2023-03-29 19:56:30.071775Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('136287c9-a709-48c7-8a4a-33eab49972d6', TIMESTAMPTZ '2023-03-29 19:56:30.071649Z', NULL, TIMESTAMPTZ '2023-05-03 19:56:30.071649Z', 'r516504ej5d6k77418v7e0jfdcr3t7g9', 'Chilly', -19, TIMESTAMPTZ '2023-03-29 19:56:30.071649Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('13baf729-f4b7-4020-8ce7-2fc899ff2eab', TIMESTAMPTZ '2023-03-29 19:56:30.071711Z', NULL, TIMESTAMPTZ '2023-05-31 19:56:30.071711Z', 'h3kb0cb866rfe4c4mb50l1889ceep7sb', 'Bracing', 40, TIMESTAMPTZ '2023-03-29 19:56:30.071712Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('145c0307-fdf6-4e04-a4e9-76d9fbb73a07', TIMESTAMPTZ '2023-03-29 19:56:30.071789Z', NULL, TIMESTAMPTZ '2023-07-04 19:56:30.071789Z', 'l1o9acgdl30emb64e808a49ac0mdbea6', 'Freezing', -14, TIMESTAMPTZ '2023-03-29 19:56:30.07179Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('150972cb-2f4b-4691-af30-66729a55ecb6', TIMESTAMPTZ '2023-03-29 19:56:30.071761Z', NULL, TIMESTAMPTZ '2023-06-21 19:56:30.071761Z', '62bcg58090hb6cf488hb2aaef298rdt1', 'Warm', -6, TIMESTAMPTZ '2023-03-29 19:56:30.071761Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('15c7028d-e98e-4146-8f5c-93f8d90c1ac2', TIMESTAMPTZ '2023-03-29 19:56:30.071625Z', NULL, TIMESTAMPTZ '2023-04-23 19:56:30.071624Z', 'jfodg3d6624cn124l91678n7g57cj7r7', 'Cool', -12, TIMESTAMPTZ '2023-03-29 19:56:30.071625Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('166ea447-8ce2-4139-8ab6-a11d88510e22', TIMESTAMPTZ '2023-03-29 19:56:30.071774Z', NULL, TIMESTAMPTZ '2023-06-27 19:56:30.071774Z', 'a2dam95en9tdq1e44at928odp7hdd4c6', 'Sweltering', 45, TIMESTAMPTZ '2023-03-29 19:56:30.071774Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('17d602ab-fc13-445b-9766-3ef4c2297d9b', TIMESTAMPTZ '2023-03-29 19:56:30.071748Z', NULL, TIMESTAMPTZ '2023-06-15 19:56:30.071748Z', '7496b8v17c90g5e418cc04fe0cn9udu1', 'Balmy', 2, TIMESTAMPTZ '2023-03-29 19:56:30.071748Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('1f4e86ee-ad8d-4b5c-b3f0-77dbbc506428', TIMESTAMPTZ '2023-03-29 19:56:30.071621Z', NULL, TIMESTAMPTZ '2023-04-22 19:56:30.07162Z', 'ceh5nd7eibp3k394i9u3c8i7sbo5q5fe', 'Freezing', 27, TIMESTAMPTZ '2023-03-29 19:56:30.071623Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('1f8faa9b-c3fe-4201-9e08-43c0aec0bd06', TIMESTAMPTZ '2023-03-29 19:56:30.071651Z', NULL, TIMESTAMPTZ '2023-05-04 19:56:30.07165Z', 'b25a36m5jfsf48a4a86a9en9l5v974q7', 'Chilly', 36, TIMESTAMPTZ '2023-03-29 19:56:30.071651Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('21039582-2935-4fd7-a982-365e663a1e18', TIMESTAMPTZ '2023-03-29 19:56:30.07177Z', NULL, TIMESTAMPTZ '2023-06-26 19:56:30.07177Z', 'obc0odl1mbb8r314a8c8h1eev5c6o9nf', 'Warm', 6, TIMESTAMPTZ '2023-03-29 19:56:30.07177Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('23b7d85b-afaa-423f-893e-0df6224a71a3', TIMESTAMPTZ '2023-03-29 19:56:30.071702Z', NULL, TIMESTAMPTZ '2023-05-26 19:56:30.071702Z', '286e0800n7kb5604q936n3l5j59c62g7', 'Mild', 18, TIMESTAMPTZ '2023-03-29 19:56:30.071702Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('27d3bbd2-a187-4fbd-8b03-663855865c0a', TIMESTAMPTZ '2023-03-29 19:56:30.071796Z', NULL, TIMESTAMPTZ '2023-07-07 19:56:30.071796Z', 'car5v790o9qbl7f4i9kbf8gdcabcm300', 'Balmy', 11, TIMESTAMPTZ '2023-03-29 19:56:30.071796Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('31317c68-f76f-4f66-8382-087c1046d668', TIMESTAMPTZ '2023-03-29 19:56:30.071767Z', NULL, TIMESTAMPTZ '2023-06-24 19:56:30.071767Z', '32m7ifs7gff6888498e0404a2av35ehb', 'Warm', -3, TIMESTAMPTZ '2023-03-29 19:56:30.071767Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('39ceaf19-d682-4551-895d-33929d558bd7', TIMESTAMPTZ '2023-03-29 19:56:30.071566Z', NULL, TIMESTAMPTZ '2023-03-31 19:56:30.071566Z', 'u77a960474f2cca45846r3hd66of36i7', 'Balmy', -12, TIMESTAMPTZ '2023-03-29 19:56:30.071566Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('3bf391e7-3036-4f41-a733-be39f3e1e7d5', TIMESTAMPTZ '2023-03-29 19:56:30.071612Z', NULL, TIMESTAMPTZ '2023-04-18 19:56:30.071612Z', 'a0jdp7sdae74l974u9l33eodhbhdlfod', 'Cool', 38, TIMESTAMPTZ '2023-03-29 19:56:30.071612Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('3c6514fa-0087-4888-b7f0-1f920fec087d', TIMESTAMPTZ '2023-03-29 19:56:30.071685Z', NULL, TIMESTAMPTZ '2023-05-19 19:56:30.071685Z', 'kde8727cn1463eb4pbea1c30nb66ecp7', 'Cool', -3, TIMESTAMPTZ '2023-03-29 19:56:30.071685Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('3d911347-cb95-46b8-ae93-3c27ab77fe9b', TIMESTAMPTZ '2023-03-29 19:56:30.07167Z', NULL, TIMESTAMPTZ '2023-05-13 19:56:30.07167Z', 'k50e78e478r7p1f4p94c90m7s5c0f480', 'Scorching', 13, TIMESTAMPTZ '2023-03-29 19:56:30.07167Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('3ee0d633-09fc-4e0b-ab07-df4620c4fdcb', TIMESTAMPTZ '2023-03-29 19:56:30.071697Z', NULL, TIMESTAMPTZ '2023-05-24 19:56:30.071697Z', '52l18a4e020c1c84c8gbj53aub9akfi9', 'Hot', 44, TIMESTAMPTZ '2023-03-29 19:56:30.071697Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('4031e091-cd4d-4a8c-bf60-68db36e46bcf', TIMESTAMPTZ '2023-03-29 19:56:30.071715Z', NULL, TIMESTAMPTZ '2023-06-01 19:56:30.071715Z', 'cab69cl9ba0e681478rdk5747cack3l9', 'Chilly', 22, TIMESTAMPTZ '2023-03-29 19:56:30.071715Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('40d04d2e-f429-413e-bfb8-8d16d8dba122', TIMESTAMPTZ '2023-03-29 19:56:30.071609Z', NULL, TIMESTAMPTZ '2023-04-17 19:56:30.071608Z', 'e06e2ao948f4t944d8u1b6s1kdn3p97c', 'Freezing', 8, TIMESTAMPTZ '2023-03-29 19:56:30.071609Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('42e2c197-4e7f-4f6a-9f5e-a5c0347288b4', TIMESTAMPTZ '2023-03-29 19:56:30.07169Z', NULL, TIMESTAMPTZ '2023-05-21 19:56:30.07169Z', 'nb2ah3u1188c22a4e8sfjdsdf452f4k5', 'Sweltering', 27, TIMESTAMPTZ '2023-03-29 19:56:30.07169Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('47f40dc6-c7c9-4901-ab3a-477976ba8e3d', TIMESTAMPTZ '2023-03-29 19:56:30.071737Z', NULL, TIMESTAMPTZ '2023-06-11 19:56:30.071737Z', 's9q1udc0008e56249826u928gd98d6sb', 'Freezing', 1, TIMESTAMPTZ '2023-03-29 19:56:30.071738Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('489fa051-ac0c-4de2-ba1b-1cbd819834f6', TIMESTAMPTZ '2023-03-29 19:56:30.071728Z', NULL, TIMESTAMPTZ '2023-06-07 19:56:30.071728Z', 'aaifqfs9vdbe747408a87cg916f482n7', 'Sweltering', 52, TIMESTAMPTZ '2023-03-29 19:56:30.071729Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('4cb15e2a-77d1-46df-86ce-d6e44b9b3f82', TIMESTAMPTZ '2023-03-29 19:56:30.071695Z', NULL, TIMESTAMPTZ '2023-05-23 19:56:30.071695Z', 'h7m768n7hbob88543a28a8gds756t962', 'Freezing', 27, TIMESTAMPTZ '2023-03-29 19:56:30.071695Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('51704150-1fa6-4b3f-a9e3-233278bae9d4', TIMESTAMPTZ '2023-03-29 19:56:30.071594Z', NULL, TIMESTAMPTZ '2023-04-10 19:56:30.071594Z', 'aee0u9k38ct196c4o9k5c8ldpb1254ee', 'Freezing', 47, TIMESTAMPTZ '2023-03-29 19:56:30.071594Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('5c19bea1-221e-409a-952b-feaf6b8194ba', TIMESTAMPTZ '2023-03-29 19:56:30.071757Z', NULL, TIMESTAMPTZ '2023-06-20 19:56:30.071757Z', 'dcdajbl5n9j58414lbkbm388o112s588', 'Scorching', 31, TIMESTAMPTZ '2023-03-29 19:56:30.071757Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('62826307-2ce7-476a-85e2-6145c917ba99', TIMESTAMPTZ '2023-03-29 19:56:30.071703Z', NULL, TIMESTAMPTZ '2023-05-27 19:56:30.071703Z', 'v346ec68ecsb9814rbhfs5u3l588l95a', 'Mild', 25, TIMESTAMPTZ '2023-03-29 19:56:30.071704Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('63398d09-1f76-416b-9a3e-c109b99e65ef', TIMESTAMPTZ '2023-03-29 19:56:30.071732Z', NULL, TIMESTAMPTZ '2023-06-09 19:56:30.071731Z', 'g1jf9cufa04496d47838a08c56rf06s7', 'Freezing', -14, TIMESTAMPTZ '2023-03-29 19:56:30.071732Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('6583fa67-ac5a-409c-b5a1-1b97969a6170', TIMESTAMPTZ '2023-03-29 19:56:30.071791Z', NULL, TIMESTAMPTZ '2023-07-05 19:56:30.071791Z', 'gb68vfeak992r7b4d8c24emdn9ifp3o3', 'Warm', 52, TIMESTAMPTZ '2023-03-29 19:56:30.071791Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('67835124-9bdc-48c8-816a-fcc4ff3e3fed', TIMESTAMPTZ '2023-03-29 19:56:30.071794Z', NULL, TIMESTAMPTZ '2023-07-06 19:56:30.071794Z', 'o9acqft1b4c8kb04d8pd0cv3ifkdc6de', 'Bracing', -20, TIMESTAMPTZ '2023-03-29 19:56:30.071794Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('6d6fb3e4-deec-4213-a7f5-65b84cfbffd4', TIMESTAMPTZ '2023-03-29 19:56:30.071743Z', NULL, TIMESTAMPTZ '2023-06-13 19:56:30.071743Z', 'v3sbifa46an548f4i9mblf7e5ad2eehb', 'Sweltering', 1, TIMESTAMPTZ '2023-03-29 19:56:30.071743Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('6f7f612f-681f-4dc0-af51-0abde4092680', TIMESTAMPTZ '2023-03-29 19:56:30.071682Z', NULL, TIMESTAMPTZ '2023-05-17 19:56:30.071682Z', 'h55esd6c2am5uf84ob82t718e02ci7kd', 'Chilly', -1, TIMESTAMPTZ '2023-03-29 19:56:30.071682Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('6ff4d774-363f-476f-9098-22c78e5d47d2', TIMESTAMPTZ '2023-03-29 19:56:30.071692Z', NULL, TIMESTAMPTZ '2023-05-22 19:56:30.071691Z', 'jbvfq51atf984ee4lbidu148h9s9v178', 'Cool', -12, TIMESTAMPTZ '2023-03-29 19:56:30.071692Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('74872830-6b0f-46cf-8782-803dcae58065', TIMESTAMPTZ '2023-03-29 19:56:30.071639Z', NULL, TIMESTAMPTZ '2023-04-29 19:56:30.071639Z', 'd470c8a686j5q3245aubj52chdg1e0h7', 'Bracing', 31, TIMESTAMPTZ '2023-03-29 19:56:30.071639Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('77bd39c2-a366-4cb6-9b5b-6c7832243118', TIMESTAMPTZ '2023-03-29 19:56:30.071657Z', NULL, TIMESTAMPTZ '2023-05-07 19:56:30.071657Z', 'daq3u1r598g5pdd45a58d49ctfkd40f0', 'Freezing', 31, TIMESTAMPTZ '2023-03-29 19:56:30.071657Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('7837c6bf-1492-4f38-af66-83c61c2cb33b', TIMESTAMPTZ '2023-03-29 19:56:30.071595Z', NULL, TIMESTAMPTZ '2023-04-11 19:56:30.071595Z', 'gbf4r5d8aap37e648a341ec84e5ce6hb', 'Cool', 36, TIMESTAMPTZ '2023-03-29 19:56:30.071596Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('7a8c2d0e-02d4-409a-85b8-78d6c38292f0', TIMESTAMPTZ '2023-03-29 19:56:30.071607Z', NULL, TIMESTAMPTZ '2023-04-16 19:56:30.071607Z', 'mdmbq1kf9am5bc94t9m3fatd4cg7qf26', 'Bracing', 33, TIMESTAMPTZ '2023-03-29 19:56:30.071607Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('7d862e39-2306-4026-96ec-f67b2a65de25', TIMESTAMPTZ '2023-03-29 19:56:30.07159Z', NULL, TIMESTAMPTZ '2023-04-09 19:56:30.07159Z', '7agff69828982444nbtb56tb52o5tdd2', 'Mild', 24, TIMESTAMPTZ '2023-03-29 19:56:30.07159Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('8352ff55-adf0-44e6-9416-1e9cec0f15c6', TIMESTAMPTZ '2023-03-29 19:56:30.071676Z', NULL, TIMESTAMPTZ '2023-05-15 19:56:30.071675Z', 'j3e4gbe6pbndj144j97664l7cav706c6', 'Scorching', 33, TIMESTAMPTZ '2023-03-29 19:56:30.071676Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('876237fe-fa7a-4e76-a84a-66f223fb14c3', TIMESTAMPTZ '2023-03-29 19:56:30.071632Z', NULL, TIMESTAMPTZ '2023-04-26 19:56:30.071632Z', '0es51e74kdfaj3648ah1def0ce1cgf10', 'Cool', 3, TIMESTAMPTZ '2023-03-29 19:56:30.071632Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('8a4ce1bb-37b6-4e4c-9092-13522c75fab6', TIMESTAMPTZ '2023-03-29 19:56:30.07173Z', NULL, TIMESTAMPTZ '2023-06-08 19:56:30.07173Z', '5a16uffav1r9r3e4ibg1ecobib5cn950', 'Sweltering', 49, TIMESTAMPTZ '2023-03-29 19:56:30.07173Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('8c9c1a84-e5f3-4985-b28f-5f85c5e2d606', TIMESTAMPTZ '2023-03-29 19:56:30.071677Z', NULL, TIMESTAMPTZ '2023-05-16 19:56:30.071677Z', 'g7l7ca6c6a400064nbkf58c8684atdnf', 'Freezing', 27, TIMESTAMPTZ '2023-03-29 19:56:30.071677Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('90c1c85d-2593-424b-b7a0-1e531f085e0d', TIMESTAMPTZ '2023-03-29 19:56:30.071788Z', NULL, TIMESTAMPTZ '2023-07-03 19:56:30.071788Z', '583ak9i90eg1bc946888v71cvdq988hb', 'Warm', 16, TIMESTAMPTZ '2023-03-29 19:56:30.071788Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('913e8fad-0fd0-4238-a8cc-46e7d1bff4bd', TIMESTAMPTZ '2023-03-29 19:56:30.071741Z', NULL, TIMESTAMPTZ '2023-06-12 19:56:30.071741Z', 'ec6072v590b4nff4ub94ib4024v99er3', 'Hot', 19, TIMESTAMPTZ '2023-03-29 19:56:30.071741Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('92456678-2200-4797-9bf2-e6939125ebb8', TIMESTAMPTZ '2023-03-29 19:56:30.071587Z', NULL, TIMESTAMPTZ '2023-04-07 19:56:30.071587Z', 'qb26m5n36ct10a04rbtbh1b0e6sfl1mb', 'Chilly', 7, TIMESTAMPTZ '2023-03-29 19:56:30.071587Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('930d6bd0-7573-4018-90a2-1f9ebc85b28a', TIMESTAMPTZ '2023-03-29 19:56:30.071574Z', NULL, TIMESTAMPTZ '2023-04-02 19:56:30.071574Z', '8a0chf88u7gbk934l90cn92ada7ch7cc', 'Bracing', 16, TIMESTAMPTZ '2023-03-29 19:56:30.071574Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('938eb043-ed51-40f3-b7a0-f67134f7eda9', TIMESTAMPTZ '2023-03-29 19:56:30.071576Z', NULL, TIMESTAMPTZ '2023-04-03 19:56:30.071576Z', '58l974tb486a70e4g9ibd4i9gbccp3h7', 'Chilly', 34, TIMESTAMPTZ '2023-03-29 19:56:30.071576Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('981a37de-bf0d-4d9b-a1d0-ca54355b82e4', TIMESTAMPTZ '2023-03-29 19:56:30.071744Z', NULL, TIMESTAMPTZ '2023-06-14 19:56:30.071744Z', 'nd96b608v356sf74n958ofg11e3avfjd', 'Bracing', 4, TIMESTAMPTZ '2023-03-29 19:56:30.071744Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('99896b58-ab3c-48a7-bcdc-91bda4d7c633', TIMESTAMPTZ '2023-03-29 19:56:30.071756Z', NULL, TIMESTAMPTZ '2023-06-19 19:56:30.071755Z', 'g3pdvfrf068cb064d8cesbe82e4eb2q3', 'Balmy', 25, TIMESTAMPTZ '2023-03-29 19:56:30.071756Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('9a15b00b-1f9e-4868-bb44-d5505a458cfa', TIMESTAMPTZ '2023-03-29 19:56:30.0716Z', NULL, TIMESTAMPTZ '2023-04-13 19:56:30.0716Z', 'm5o5aaf0r1n7n504pb62r9p19ebc54f6', 'Bracing', 4, TIMESTAMPTZ '2023-03-29 19:56:30.071601Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('9b4c8d55-a05f-4efd-96a2-fdf6c56ac183', TIMESTAMPTZ '2023-03-29 19:56:30.071668Z', NULL, TIMESTAMPTZ '2023-05-12 19:56:30.071668Z', 'sdudo5kfpbi79ca46826v32agd76d294', 'Mild', -18, TIMESTAMPTZ '2023-03-29 19:56:30.071669Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('9b8ce73f-d1d8-4a6c-870b-08777167ac8e', TIMESTAMPTZ '2023-03-29 19:56:30.071614Z', NULL, TIMESTAMPTZ '2023-04-19 19:56:30.071614Z', 'ud5au3l732k7g3345a8c80udeci9m7ec', 'Freezing', 35, TIMESTAMPTZ '2023-03-29 19:56:30.071614Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('9c4c7896-bc0a-4afd-9151-dbf2ad2dfd36', TIMESTAMPTZ '2023-03-29 19:56:30.07178Z', NULL, TIMESTAMPTZ '2023-06-30 19:56:30.07178Z', '14l58co552i3a8848at9sbc82086h966', 'Hot', 45, TIMESTAMPTZ '2023-03-29 19:56:30.071781Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('9c5cd885-27cd-4f15-ba64-b75945043208', TIMESTAMPTZ '2023-03-29 19:56:30.071782Z', NULL, TIMESTAMPTZ '2023-07-01 19:56:30.071782Z', 'u55058t3kf96m7444876mdo7p1m16822', 'Mild', 5, TIMESTAMPTZ '2023-03-29 19:56:30.071782Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('9f9481f0-db18-4b97-a81e-6a136a6f06a3', TIMESTAMPTZ '2023-03-29 19:56:30.071722Z', NULL, TIMESTAMPTZ '2023-06-04 19:56:30.071722Z', '4ch768q7642a8e94j9f2d61e4cpdq7ca', 'Balmy', 15, TIMESTAMPTZ '2023-03-29 19:56:30.071722Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('a2e94fad-866f-4666-b2f6-5bc08b5dfa0d', TIMESTAMPTZ '2023-03-29 19:56:30.071572Z', NULL, TIMESTAMPTZ '2023-04-01 19:56:30.071572Z', '2ak966kf3ambu3e468v7q12cu3gdf87a', 'Scorching', 53, TIMESTAMPTZ '2023-03-29 19:56:30.071572Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('a319dcea-ef16-4eb5-b3a0-3733fd2d790f', TIMESTAMPTZ '2023-03-29 19:56:30.071723Z', NULL, TIMESTAMPTZ '2023-06-05 19:56:30.071723Z', 'eec46858h9mde4647ae6n304862ef22c', 'Scorching', 6, TIMESTAMPTZ '2023-03-29 19:56:30.071724Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('a91b260a-0f33-469c-a96c-a8b86b7ba6f9', TIMESTAMPTZ '2023-03-29 19:56:30.071764Z', NULL, TIMESTAMPTZ '2023-06-23 19:56:30.071763Z', 'k7j1o3v7a4o5r7e4vbl56e96rdp506v1', 'Freezing', -4, TIMESTAMPTZ '2023-03-29 19:56:30.071764Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('a9d8c8ce-5765-495f-9261-ed88cea4ccdd', TIMESTAMPTZ '2023-03-29 19:56:30.071689Z', NULL, TIMESTAMPTZ '2023-05-20 19:56:30.071688Z', '88if02o3f4uf0ec4i9e41ef47234m160', 'Hot', 2, TIMESTAMPTZ '2023-03-29 19:56:30.071689Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('ab305ca9-5920-4e00-925f-a5b7c3799d81', TIMESTAMPTZ '2023-03-29 19:56:30.071658Z', NULL, TIMESTAMPTZ '2023-05-08 19:56:30.071658Z', '54h1p3c8428cbc042850u5q538d4oft5', 'Scorching', 44, TIMESTAMPTZ '2023-03-29 19:56:30.071659Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('ab936fa6-f02d-4679-9ed1-7a3ef54527ef', TIMESTAMPTZ '2023-03-29 19:56:30.071777Z', NULL, TIMESTAMPTZ '2023-06-29 19:56:30.071777Z', 'pdo52ckdo3e4m7f4g97afcb2p912t504', 'Hot', -16, TIMESTAMPTZ '2023-03-29 19:56:30.071777Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('aec2ef09-78cc-424b-a33f-23d12a42fc4b', TIMESTAMPTZ '2023-03-29 19:56:30.071663Z', NULL, TIMESTAMPTZ '2023-05-10 19:56:30.071663Z', 'daj502u1kbib2824m952ifu9f0b0m578', 'Cool', -6, TIMESTAMPTZ '2023-03-29 19:56:30.071663Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('b011e0c2-263f-4243-89fc-3736831467cf', TIMESTAMPTZ '2023-03-29 19:56:30.071564Z', NULL, TIMESTAMPTZ '2023-03-30 19:56:30.071559Z', 'cc0a0cp7u5289004pb30fek93ad61ce8', 'Scorching', 17, TIMESTAMPTZ '2023-03-29 19:56:30.071564Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('bfaaad6c-03e9-4b5c-bb53-38de3498738f', TIMESTAMPTZ '2023-03-29 19:56:30.071588Z', NULL, TIMESTAMPTZ '2023-04-08 19:56:30.071588Z', '2a9ca4u5n948k95408lfdaq9h340dahd', 'Balmy', 0, TIMESTAMPTZ '2023-03-29 19:56:30.071588Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('c0187d3c-64ed-4d51-ae7f-c48b74a31614', TIMESTAMPTZ '2023-03-29 19:56:30.071671Z', NULL, TIMESTAMPTZ '2023-05-14 19:56:30.071671Z', 'vbqdr3l1aa3ahf746886t3n92a04ofqd', 'Mild', 8, TIMESTAMPTZ '2023-03-29 19:56:30.071671Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('c3e8b316-8336-47a2-ad00-5ef934eae55b', TIMESTAMPTZ '2023-03-29 19:56:30.071637Z', NULL, TIMESTAMPTZ '2023-04-28 19:56:30.071637Z', 'r3g5u3udhbp5ae34r9a8d8ba1e862cr1', 'Scorching', 13, TIMESTAMPTZ '2023-03-29 19:56:30.071637Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('c601ab4d-146e-40a4-be3a-755f096f1b8a', TIMESTAMPTZ '2023-03-29 19:56:30.071725Z', NULL, TIMESTAMPTZ '2023-06-06 19:56:30.071725Z', 'm1e4n3s9cc648444obqbc4hf667er5v7', 'Balmy', 50, TIMESTAMPTZ '2023-03-29 19:56:30.071725Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('c6b1d108-2f64-4843-aaaa-eb35cba68b13', TIMESTAMPTZ '2023-03-29 19:56:30.071754Z', NULL, TIMESTAMPTZ '2023-06-18 19:56:30.071754Z', 'pdm95c3aib66o5b4a8f6h5h5sf98rfp5', 'Bracing', -10, TIMESTAMPTZ '2023-03-29 19:56:30.071754Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('c88c7d70-a12b-4c65-9ce8-b7bf451e50e7', TIMESTAMPTZ '2023-03-29 19:56:30.071583Z', NULL, TIMESTAMPTZ '2023-04-06 19:56:30.071583Z', 'n5rdg98c8e0aea944822l5k1p9f8b6h7', 'Bracing', 18, TIMESTAMPTZ '2023-03-29 19:56:30.071583Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('c8bd27b6-d133-44bc-ae6f-d8d3265143e7', TIMESTAMPTZ '2023-03-29 19:56:30.071736Z', NULL, TIMESTAMPTZ '2023-06-10 19:56:30.071736Z', 'h1a0b4r3o9s50434688c74rdn932j9i3', 'Freezing', 18, TIMESTAMPTZ '2023-03-29 19:56:30.071736Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('ca97410c-63b5-46e5-8f97-286cddcb1f43', TIMESTAMPTZ '2023-03-29 19:56:30.07171Z', NULL, TIMESTAMPTZ '2023-05-30 19:56:30.07171Z', 'k74eqfv7eec4v154p9ibq5q1v9k5d8de', 'Warm', -15, TIMESTAMPTZ '2023-03-29 19:56:30.07171Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('cbe3b43a-bc64-4c2a-9874-ae9e9bbec800', TIMESTAMPTZ '2023-03-29 19:56:30.071579Z', NULL, TIMESTAMPTZ '2023-04-04 19:56:30.071579Z', 'b4t572nf44g3p5147a28m3f0b616gf56', 'Cool', 28, TIMESTAMPTZ '2023-03-29 19:56:30.07158Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('ccc46c75-870a-42b1-9f1a-127d4318a585', TIMESTAMPTZ '2023-03-29 19:56:30.071718Z', NULL, TIMESTAMPTZ '2023-06-03 19:56:30.071718Z', 'b8aau344f0287614p914cerft3ld3c3a', 'Warm', 32, TIMESTAMPTZ '2023-03-29 19:56:30.071718Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('cf62969b-e0a7-4d69-8112-042f16580750', TIMESTAMPTZ '2023-03-29 19:56:30.071705Z', NULL, TIMESTAMPTZ '2023-05-28 19:56:30.071705Z', '5em5hf64tf96i734u9t9e6r3i7qd9cid', 'Chilly', 19, TIMESTAMPTZ '2023-03-29 19:56:30.071705Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('d06076db-59fb-47be-bf86-2e7a579b9a4e', TIMESTAMPTZ '2023-03-29 19:56:30.071665Z', NULL, TIMESTAMPTZ '2023-05-11 19:56:30.071665Z', 'k1nd344ak5c490b4g9d67at174f6r15e', 'Bracing', 1, TIMESTAMPTZ '2023-03-29 19:56:30.071665Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('d30b573a-a00f-44be-9552-d6040cf69fd1', TIMESTAMPTZ '2023-03-29 19:56:30.071749Z', NULL, TIMESTAMPTZ '2023-06-16 19:56:30.071749Z', 'm7n7aeh5jb5and74vbp7kf14k7q9g50c', 'Freezing', -13, TIMESTAMPTZ '2023-03-29 19:56:30.071749Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('d310764b-92bc-457c-84de-a397dda0800b', TIMESTAMPTZ '2023-03-29 19:56:30.071615Z', NULL, TIMESTAMPTZ '2023-04-20 19:56:30.071615Z', 'o764r3a6e2gf9c548a42bcv764r1s374', 'Bracing', 14, TIMESTAMPTZ '2023-03-29 19:56:30.071615Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('d38093ad-2f7e-4e93-ad3d-ee386dee48b2', TIMESTAMPTZ '2023-03-29 19:56:30.071636Z', NULL, TIMESTAMPTZ '2023-04-27 19:56:30.071636Z', '64l7a69a20ifvb24nb3eq9n90858ae40', 'Freezing', 30, TIMESTAMPTZ '2023-03-29 19:56:30.071636Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('d6e026ac-c621-417d-bbb0-d6db169e45dc', TIMESTAMPTZ '2023-03-29 19:56:30.071629Z', NULL, TIMESTAMPTZ '2023-04-24 19:56:30.071629Z', '48lff0f6g7i7f6a4v9ibm9i5k5v1e6e0', 'Scorching', -8, TIMESTAMPTZ '2023-03-29 19:56:30.071629Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('d9cce2b9-c293-4c49-8214-2aedf08b1ecc', TIMESTAMPTZ '2023-03-29 19:56:30.071683Z', NULL, TIMESTAMPTZ '2023-05-18 19:56:30.071683Z', 'g3f2k190u1e6u3e4jbb8acnfs16ae87a', 'Hot', 11, TIMESTAMPTZ '2023-03-29 19:56:30.071683Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('dbeded2c-1fe1-4867-89e6-67a4a4d183a1', TIMESTAMPTZ '2023-03-29 19:56:30.071662Z', NULL, TIMESTAMPTZ '2023-05-09 19:56:30.071662Z', 'm3e21aaei5kd9a34u9hdf0n7u5hbl914', 'Chilly', 44, TIMESTAMPTZ '2023-03-29 19:56:30.071662Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('dda95f9d-b9eb-422e-b846-75253cde05cb', TIMESTAMPTZ '2023-03-29 19:56:30.071698Z', NULL, TIMESTAMPTZ '2023-05-25 19:56:30.071698Z', '3694ufn5i3a8lfe4m9n9h3r5988a0a24', 'Freezing', -16, TIMESTAMPTZ '2023-03-29 19:56:30.071699Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('de8e09cd-7594-4e85-a992-308d85c5efb9', TIMESTAMPTZ '2023-03-29 19:56:30.071631Z', NULL, TIMESTAMPTZ '2023-04-25 19:56:30.07163Z', 'ccj1749c2elfo5541876s1sbc8r1l3i5', 'Hot', 35, TIMESTAMPTZ '2023-03-29 19:56:30.071631Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('e12a2c18-16f2-47c3-a6a8-80e7b2cd3fe3', TIMESTAMPTZ '2023-03-29 19:56:30.071783Z', NULL, TIMESTAMPTZ '2023-07-02 19:56:30.071783Z', '38lfrft1p9104074pb8cs738e2gdlb42', 'Warm', 11, TIMESTAMPTZ '2023-03-29 19:56:30.071783Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('e32bf116-d4e3-4a54-a943-d4f75a0e67da', TIMESTAMPTZ '2023-03-29 19:56:30.071602Z', NULL, TIMESTAMPTZ '2023-04-14 19:56:30.071602Z', '30f0f42606kdcc045av7dam536g5i7o1', 'Sweltering', 51, TIMESTAMPTZ '2023-03-29 19:56:30.071602Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('eca2e6fe-8a67-4e59-8d9d-3c7655ac2856', TIMESTAMPTZ '2023-03-29 19:56:30.071717Z', NULL, TIMESTAMPTZ '2023-06-02 19:56:30.071716Z', 'k5sflbg5c4h9u934ubjbg3ca065c82p3', 'Hot', 46, TIMESTAMPTZ '2023-03-29 19:56:30.071717Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('f38643f9-64cb-4edf-b010-dd612013b8cf', TIMESTAMPTZ '2023-03-29 19:56:30.071645Z', NULL, TIMESTAMPTZ '2023-05-02 19:56:30.071645Z', '66e6p1id20lfe674p9tdf086dcf4j7b0', 'Freezing', -14, TIMESTAMPTZ '2023-03-29 19:56:30.071645Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('f82454e0-520c-46b6-87fe-c7b893173be4', TIMESTAMPTZ '2023-03-29 19:56:30.071769Z', NULL, TIMESTAMPTZ '2023-06-25 19:56:30.071769Z', '5aj5e672ub54c014aa608el346b2a67a', 'Mild', 11, TIMESTAMPTZ '2023-03-29 19:56:30.071769Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('fa4b6e93-0dd8-41b6-ab37-9ec7b5943b36', TIMESTAMPTZ '2023-03-29 19:56:30.071652Z', NULL, TIMESTAMPTZ '2023-05-05 19:56:30.071652Z', 'c0o502e6ufa68024lbl5s3dauba6hdnf', 'Scorching', 32, TIMESTAMPTZ '2023-03-29 19:56:30.071652Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('fb7ca828-bfd2-4c6b-8c6d-410f07b7acbf', TIMESTAMPTZ '2023-03-29 19:56:30.071581Z', NULL, TIMESTAMPTZ '2023-04-05 19:56:30.071581Z', 'h912hbn3p1l1f03468l5104ct9p9tba6', 'Sweltering', 3, TIMESTAMPTZ '2023-03-29 19:56:30.071581Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('fd2ab41e-19fa-4c27-8dd8-efad2d41d555', TIMESTAMPTZ '2023-03-29 19:56:30.071751Z', NULL, TIMESTAMPTZ '2023-06-17 19:56:30.071751Z', 'h794h5d6d2u7n154a8v9lb08l1m3l1p1', 'Sweltering', 2, TIMESTAMPTZ '2023-03-29 19:56:30.071751Z', NULL);
INSERT INTO "WeatherForecasts" ("Id", "CreateDate", "CreatedById", "Date", "PublicId", "Summary", "Temperature", "UpdateDate", "UpdatedById")
VALUES ('ff81987e-86dc-4304-acb5-5951d1ef6227', TIMESTAMPTZ '2023-03-29 19:56:30.071709Z', NULL, TIMESTAMPTZ '2023-05-29 19:56:30.071708Z', '0000h3l180pf8834a86ai348r5u5aco5', 'Freezing', 27, TIMESTAMPTZ '2023-03-29 19:56:30.071709Z', NULL);

CREATE INDEX "IX_WeatherForecasts_CreatedById" ON "WeatherForecasts" ("CreatedById");

CREATE INDEX "IX_WeatherForecasts_UpdatedById" ON "WeatherForecasts" ("UpdatedById");

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20230330025630_WeatherForecast', '7.0.4');

COMMIT;


