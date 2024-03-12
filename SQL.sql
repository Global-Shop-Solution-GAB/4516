CREATE TABLE "GCG_4516_Req"(
 "Seq" IDENTITY DEFAULT '0',
 "Requirement" CHAR(30),
 UNIQUE ("Seq"));

CREATE TABLE "GCG_4516_Terms"(
 "Seq" IDENTITY DEFAULT '0',
 "Term" CHAR(20),
 UNIQUE ("Seq"));

CREATE TABLE "GCG_4516_ShipDays"(
 "Seq" IDENTITY DEFAULT '0',
 "ShipDays" INTEGER,
 UNIQUE ("Seq"));

CREATE TABLE "GCG_4516_Carriers"(
 "Seq" IDENTITY DEFAULT '0',
 "CarrierID" CHAR(6),
 "Name" CHAR(30),
 "Account" CHAR(30),
 "Phone" CHAR(20),
 UNIQUE ("Seq"));

CREATE TABLE "GCG_4516_Header"(
 "Seq" IDENTITY DEFAULT '0',
 "Customer" CHAR(50),
 "Note" LONGVARCHAR,
 "ShipToID" CHAR(7),
 "LastChange" CHAR(20),
 UNIQUE ("Seq"));

CREATE TABLE "GCG_4516_Details"(
 "AutoNum" IDENTITY DEFAULT '0',
 "Seq" INTEGER,
 "Customer" CHAR(30),
 "SHipToID" CHAR(7)
 "Requirement" INTEGER,
 "Term" INTEGER,
 "ShipDays" INTEGER,
 "Carriers" CHAR(6),
 UNIQUE ("AutoNum"));

create view V_GCG_4516 as
(Select d.Seq, r.Requirement, d.Carriers, c.Name, t.Term, c.Account, c.Phone, s.ShipDays, d.Customer, d.ShipToID
from GCG_4516_Details d
join GCG_4516_Req r on d.Requirement = r.Seq
join GCG_4516_Terms t on d.term = t.Seq
join GCG_4516_ShipDays s on d.ShipDays = s.Seq
join GCG_4516_Carriers c on d.Carriers = c.CarrierID);






