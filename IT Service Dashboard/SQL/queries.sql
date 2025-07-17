SELECT
 -- Gather Ticket, technician, service, customer and end-user information  from each seperate table to querie
    ti.TicketID,
    ti.DateOpened,
    ti.DateClosed,
    ti.Priority,
    ti.Status,
    ti.TicketType,
    ti.SatisfactionRating,
	
 -- Combine first and last name of Technicians
    tech.FirstName || ' ' || tech.LastName AS TechnicianName,
    tech.OfficeLocation,
    tech.HireDate,
    s.ServiceName,
    s.ServiceCategory,
    c.CustomerName,
    c.Industry,
	
 -- Combine first and last name of users to make it readable
    cu.FirstName || ' ' || cu.LastName AS UserFullName,
    cu.Email AS UserEmail

  --  Left join all required tables to be safe so all data will appear even if it's missing
  -- Then linking the tickets table to Technician, Services, customers and company tables.
FROM
    tickets AS ti 
LEFT JOIN technicians AS tech ON ti.TechnicianID = tech.TechnicianID
LEFT JOIN services AS s ON ti.ServiceID = s.ServiceID
LEFT JOIN customers AS c ON ti.CustomerID = c.CustomerID
LEFT JOIN company_users AS cu ON ti.UserID = cu.UserID;