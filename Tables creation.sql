-- ---------------------------------------------------------
-- Table creation
-- ---------------------------------------------------------

-- Applications table
CREATE TABLE Applications (
    application_id INT PRIMARY KEY,
    position VARCHAR(100) NOT NULL, 
    company VARCHAR(100), 
    application_date DATE,
    employment_type VARCHAR(20) CHECK (employment_type IN ('In-person', 'Remote', 'Hybrid')),
    pay DECIMAL(10, 2),
    location VARCHAR(100),
    job_link VARCHAR(100), -- Link to the job posting
    status VARCHAR(50) NOT NULL CHECK (status IN ('Not Applied', 'Applied', 'In Progress', 'Rejected', 'Offer Received')),
    deadline DATE
);

-- Contacts table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    application_id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    FOREIGN KEY (application_id) REFERENCES Applications(application_id)
);

-- Interviews table
CREATE TABLE Interviews (
    interview_id INT PRIMARY KEY,
    application_id INT,
    interview_datetime TIMESTAMP,
    interviewer_name VARCHAR(100),
    interview_stage VARCHAR(100),
    FOREIGN KEY (application_id) REFERENCES Applications(application_id)
);

-- Documents table
CREATE TABLE Documents (
    document_id INT PRIMARY KEY,
    application_id INT,
    document_type VARCHAR(50) NOT NULL, -- Type of document (resume, cover letter, etc.)
    document_path VARCHAR(100) NOT NULL, -- File path or link to the document
    FOREIGN KEY (application_id) REFERENCES Applications(application_id)
);
