-- ---------------------------------------------------------
-- View creation and queries 
-- ---------------------------------------------------------

-- View to display all applications with associated contacts and interviews
CREATE VIEW ApplicationDetails AS
SELECT
    a.application_id,
    a.position,
    a.company,
    a.application_date,
    a.employment_type,
    a.pay,
    a.location,
    a.job_link,
    a.status,
    a.deadline,
    c.name AS contact_name,
    c.email AS contact_email,
    c.phone AS contact_phone,
    i.interview_datetime,
    i.interviewer_name,
    i.interview_stage
FROM Applications a
LEFT JOIN Contacts c ON a.application_id = c.application_id
LEFT JOIN Interviews i ON a.application_id = i.application_id;

-- Get all applications with a specific status
SELECT * 
FROM ApplicationDetails 
WHERE status = 'Applied';

-- Get all applications with upcoming interviews
SELECT * 
FROM ApplicationDetails 
WHERE interview_datetime > NOW();

-- Get all documents for a specific application
SELECT * 
FROM Documents 
WHERE application_id = 1;