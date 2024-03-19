-- find a order by email
SELECT "name","Total Price"
FROM "orderDetails"
WHERE "email" = "simona@morasca.com";

-- returns the total amount colected
SELECT SUM("Total Price")
FROM "orderDetails";

-- returns the ave price of an event
SELECT AVG("price")
FROM "events";
