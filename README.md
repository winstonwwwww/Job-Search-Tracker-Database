# Job-Search-Tracker-Database

## Overview

The Job Search Tracker Database is designed to assist individuals in managing and tracking their job search activities. This database organizes and stores information related to job applications, contacts, interviews, and associated documents. Users can record details about each job application, monitor application statuses, keep track of interview schedules, and manage important documents such as resumes and cover letters.

## Database Features

- **Applications Table:** Record details of job applications, including position, company, application date, employment type, pay, location, and application status.

- **Contacts Table:** Manage contact information related to job applications, facilitating effective communication with potential employers.

- **Interviews Table:** Track interview details, including date, time, interviewer name, and interview stage, offering a comprehensive view of the interview process.

- **Documents Table:** Store essential documents for job applications, such as resumes and cover letters, with corresponding file paths or links.

- **ApplicationDetails View:** A consolidated view combining information from the Applications, Contacts, and Interviews tables, providing an overview of each job application.

## Usage

1. Execute the `Tables creation.sql` script to create the database, including the Applications table, Contacts table, Interviews table, and Documents table.

2. Execute the `View creation and queries.sql` script to generate the ApplicationDetails View and use the predefined queries for easy tracking and organization of the job search process.

## Queries

- Retrieve applications with a specific status, such as all 'Applied' jobs.
- Identify applications with upcoming interviews.
- Retrieve all documents for a specific application.
