-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

-- Represent customers buying tickets
CREATE TABLE "customer" (
"id" INTEGER,
"first_name" TEXT NOT NULL,
"last_name" TEXT NOT NULL,
"address" TEXT NOT NULL,
"city" TEXT NOT NULL,
"state" TEXT NOT NULL,
"zip" TEXT NOT NULL,
"phone" TEXT NOT NULL UNIQUE,
"email" TEXT NOT NULL UNIQUE,
PRIMARY KEY("id")
);

-- Represents performers
CREATE TABLE "performers"(
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

-- Represents venues
CREATE TABLE "venue" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

-- represents events
CREATE TABLE "events" (
    "id" INTEGER,
    "date" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "venue_id" INTEGER,
    "performer_id" INTEGER,
    "price" NUMERIC NOT NULL CHECK("price" != 0),
    PRIMARY KEY("id"),
    FOREIGN KEY("venue_id") REFERENCES "venue"("id"),
    FOREIGN KEY("performer_id") REFERENCES "performers"("id")
);

-- represents orders
CREATE TABLE "orders" (
    "id" INTEGER,
    "event_id" INTEGER,
    "qty" INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("event_id") REFERENCES "events"("id")
);

-- links orders and customer
CREATE TABLE "linktable"(
    "order_id" INTEGER,
    "cust_id" INTEGER,
    FOREIGN KEY ("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY ("cust_id")REFERENCES "customer"("id")
);


-- Create a view on orders
CREATE VIEW "orderDetails" AS
SELECT "c"."first_name", "c"."last_name","c"."phone", "c"."email", "e"."price",
"o"."qty","e"."name", ("e"."price" * "o"."qty") AS "Total Price"
FROM "customer" AS "c"
JOIN "linktable" AS "l" ON "c"."id" = "l"."cust_id"
JOIN "orders" AS "o" ON "o"."id" = "l"."order_id"
JOIN "events" AS "e" ON "e"."id" = "o"."event_id";

-- create indes to speed common searchs
CREATE INDEX "customer_search" ON "customer"("first_name","last_name","phone","email");
CREATE INDEX "performers_search" ON "performers"("name");
CREATE INDEX "venue_search" ON "venue"("name");
