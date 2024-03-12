create view V_GCG_4516 as
(Select d.Seq, r.Requirement, d.Carriers, c.Name, t.Term, c.Account, c.Phone, s.ShipDays, d.Customer
from GCG_4516_Details d
join GCG_4516_Req r on d.Requirement = r.Seq
join GCG_4516_Terms t on d.term = t.Seq
join GCG_4516_ShipDays s on d.ShipDays = s.Seq
join GCG_4516_Carriers c on d.Carriers = c.CarrierID);