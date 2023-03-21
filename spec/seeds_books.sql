DROP TABLE IF EXISTS "public"."books";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS books_id_seq;

-- Table Definition
CREATE TABLE "public"."books" (
    "id" SERIAL,
    "title" text,
    "author_name" text,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."books" ("id", "title", "author_name") VALUES
(1, 'Nineteen Eighty-Four', 'George Orwell'),
(2, 'Mrs Dalloway', 'Virginia Woolf'),
(3, 'Emma', 'Jane Austen'),
(4, 'Dracula', 'Bram Stoker'),
(5, 'The Age of Innocence', 'Edith Wharton');



-- TRUNCATE TABLE books RESTART IDENTITY; -- replace with your own table name.

-- -- Below this line there should only be `INSERT` statements.
-- -- Replace these statements with your own seed data.

-- INSERT INTO books (title, author) VALUES ('Mrs Dalloway', 'Virginia Woolf');
-- INSERT INTO books (title, author) VALUES ('Dracula', 'Bram Stoker');