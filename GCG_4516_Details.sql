CREATE TABLE "GCG_4516_Details"(
 "AutoNum" IDENTITY DEFAULT '0',
 "Seq" INTEGER,
 "Customer" CHAR(30),
 "Requirement" INTEGER,
 "Term" INTEGER,
 "ShipDays" INTEGER,
 "Carriers" CHAR(6),
 UNIQUE ("AutoNum"));