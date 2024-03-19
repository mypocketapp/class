-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database
-- enter sample data for customer table
INSERT INTO "customer"(
"first_name","last_name","address","city","state","zip","phone","email")
VALUES
("Foller","Donette","34 Center St","Hamilton","OH","45011","513-570-1893","donette.foller@cox.net"),
("Morasca","Simona","3 Mcauley Dr","Ashland","OH","44805","419-503-2484","simona@morasca.com"),
("Ruta","Graciela","98 Connecticut Ave Nw","Chagrin Falls","OH","44023","440-780-8425","gruta@cox.net"),
("Corrio","Ammie","74874 Atlantic Ave","Columbus","OH","43215","614-801-9788","ammie@corrio.com"),
("Hoogland","Tamar","2737 Pistorio Rd #9230","London","OH","43140","740-343-8575","tamar@hotmail.com"),
("Isenhower","Lettie","70 W Main St","Beachwood","OH","44122","216-657-7668","lettie_isenhower@yahoo.com"),
("Emigh","Stephen","3777 E Richmond St #900","Akron","OH","44302","330-537-5358","stephen_emigh@hotmail.com"),
("Wiklund","Melissa","61 13 Stoneridge #835","Findlay","OH","45840","419-939-3613","melissa@cox.net"),
("Merced","Laticia","72 Mannix Dr","Cincinnati","OH","45203","513-508-7371","lmerced@gmail.com"),
("Varriano","Claribel","6 Harry L Dr #6327","Perrysburg","OH","43551","419-544-4900","claribel_varriano@cox.net"),
("Karpel","Salena","1 Garfield Ave #7","Canton","OH","44707","330-791-8557","skarpel@cox.net"),
("Plumer","Rickie","3 N Groesbeck Hwy","Toledo","OH","43613","419-693-1334","rickie.plumer@aol.com"),
("Cloney","Buddy","944 Gaither Dr","Strongsville","OH","44136","440-989-5826","buddy.cloney@yahoo.com"),
("Vonasek","Kattie","2845 Boulder Crescent St","Cleveland","OH","44103","216-923-3715","kattie@vonasek.org"),
("Nabours","Adelina","80 Pittsford Victor Rd #9","Cleveland","OH","44103","216-230-4892","adelina_nabours@gmail.com"),
("Stuer","Lashawnda","7422 Martin Ave #8","Toledo","OH","43607","419-588-8719","lstuer@cox.net"),
("Estell","Roselle","8116 Mount Vernon Ave","Bucyrus","OH","44820","419-571-5920","roselle.estell@hotmail.com"),
("Meisel","Margart","868 State St #38","Cincinnati","OH","45251","513-617-2362","margart_meisel@yahoo.com"),
("Cantres","Galen","617 Nw 36th Ave","Brook Park","OH","44142","216-600-6111","galen@yahoo.com"),
("Witten","Gertude","7 Tarrytown Rd","Cincinnati","OH","45217","513-977-7043","gertude.witten@gmail.com"),
("Mcdoniel","Mollie","8590 Lake Lizzie Dr","Bowling Green","OH","43402","419-975-3182","mollie_mcdoniel@yahoo.com"),
("Walthall","Hubert","95 Main Ave #2","Barberton","OH","44203","330-903-1345","hubert@walthall.org");

-- inserts sample data for performers
INSERT INTO "performers"
("name")
VALUES
("The Cleveland Orchestra"),
("Blossom Festival Band"),
("Akron Symphony Orchestral");

-- inserts sample data for venues
INSERT INTO "venue"
("name")
VALUES("Blossom Music");

-- inserts sample data for events
INSERT INTO "events"
("date","name","venue_id","performer_id","price")
VALUES
("2024-29-06","Indinan Jones Raders of the Lost Ark","1","1","25"),
("2024-30-06","Indinan Jones Raders of the Lost Ark","1","1","30"),
("2024-07-04","Salute to Americal","1","2","50"),
("2024-31-08","Cirquedela Symphonie","1","3","25"),
("2024/01/09","Cirquedela Symphonie","1","3","25");

-- inserts sample order data
INSERT INTO "orders"
("event_id","qty")
VALUES
("3","5"),
("4","10"),
("3","2");

-- inserts sample linktable data
INSERT INTO "linktable"
("order_id","cust_id")
VALUES
("1","2"),
("2","5"),
("3","8");

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
