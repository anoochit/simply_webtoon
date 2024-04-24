BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "description" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "espisode" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "image" text NOT NULL,
    "_bookEspisodesBookId" integer
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "espisode"
    ADD CONSTRAINT "espisode_fk_0"
    FOREIGN KEY("_bookEspisodesBookId")
    REFERENCES "book"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR webtoon
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('webtoon', '20240423143420695', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240423143420695', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
