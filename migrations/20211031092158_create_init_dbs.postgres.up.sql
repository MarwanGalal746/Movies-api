CREATE TABLE "directors" (
                             "id" SERIAL PRIMARY KEY,
                             "name" varchar(70) NOT NULL,
                             "created_at" timestamp NOT NULL DEFAULT (now()),
                             "deleted_at" timestamp NOT NULL DEFAULT (now()),
                             "updated_at" timestamp NOT NULL DEFAULT (now())
);

CREATE TABLE "movies" (
                          "id" SERIAL PRIMARY KEY,
                          "name" varchar(70) NOT NULL,
                          "director_id" integer NOT NULL,
                          "created_at" timestamp NOT NULL DEFAULT (now()),
                          "deleted_at" timestamp NOT NULL DEFAULT (now()),
                          "updated_at" timestamp NOT NULL DEFAULT (now())
);

ALTER TABLE "movies" ADD FOREIGN KEY ("director_id") REFERENCES "directors" ("id");