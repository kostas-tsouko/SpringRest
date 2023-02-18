# Distributed University Internship Selection System<br><br>

This is a web-based application that allows students to apply for internships offered by companies, and allows companies to review and manage applications. The data is stored in a MySQL database, and is accessed and manipulated using Java EE, Spring, and Hibernate. The system uses Tomcat as a server to host the application, and the front-end is built using Vanilla JavaScript, HTML, and CSS.<br><br>

Authentication is implemented for students, companies and administrator, and the user data is stored in the MySQL database. The system was created as a university project during the third year of study, and was developed in collaboration with Ioannis Liatsos.<br><br>

## Installation<br><br>

To install the project, you will need to have Java EE, Spring, Hibernate, and Tomcat installed on your system. Here are the steps to follow:<br><br>

1. Download and install Java EE, Spring, and Hibernate according to the documentation provided by their respective websites.<br>
2. Download and install Tomcat on your system.<br>
3. Clone this repository to your local machine.<br>
4. Open the project in your favorite IDE and configure the Tomcat server. Make sure that the server is configured to run the project.<br>
5. Set up the database connection by configuring the connection settings in the project files.<br>
6. Build and run the project using your IDE or by deploying it to the Tomcat server.<br><br>

## Usage<br><br>

Once the project is installed and the Tomcat server is running, you can access the system through your web browser. Students can apply for internships by browsing available job offers and submitting their applications. Companies can review and manage applications submitted by students. Additionally, the administrator has the ability to add ,update or delete students and companies from the system.<br><br>

## Language and Tools

- Java EE
- HTML
- CSS
- Spring
- Hibernate
- JavaScript
- Postman (for API testing)

## Project Structure<br><br>

The project is divided into two parts: `springRest` and `springInternal`. The `springRest` project provides a RESTful API for accessing the database, while the `springInternal` project provides a web-based interface for the application. Both projects use the same database.<br><br>

- To access the `springRest` project, go to: [SpringRest](https://github.com/kostas-tsouko/SpringRest)<br>
- To access the `springInternal` project, go to: [SpringInternal](https://github.com/Tsouko/SpringInternal)<br><br>

## Credits<br><br>

This project was made during my third year of my university, Harokopeio Department of Informatics and Telematics.

## Screenshots

Here are some screenshots of the project:

[![login-ekswteriko.png](https://i.postimg.cc/fTRn4HkY/login-ekswteriko.png)](https://postimg.cc/CdX6ksGK)
*The login authentication screen. Users can enter their credentials to log in as a company, student, or administrator.*<br><br><br>

[![list-of-students-ekswteriko.jpg](https://i.postimg.cc/6q6SX36B/list-of-students-ekswteriko.jpg)](https://postimg.cc/yg5nh7SG)
*This screenshot shows the list of students who have applied for internships through the system. The company can review each student's application and either accept or deny their request. The buttons at the end of each row allow the administrator to accept or deny the application.*<br><br><br>

[![add-a-job-offer-ekswteriko.png](https://i.postimg.cc/bw4KtpgR/add-a-job-offer-ekswteriko.png)](https://postimg.cc/FYgWtt2f)
*This screenshot shows the form that companies can use to create new job offers in the system. The form includes fields for the Company Name, job title, job description, available possitions. Once the company submits the form, the new job offer is added to the list of available internships for students to apply to.<br><br><br>

[![list-of-job-offers-ekswteriko.png](https://i.postimg.cc/XJkhmFb2/list-of-job-offers-ekswteriko.png)](https://postimg.cc/r0zQtDzW)
*This screenshot displays the list of job offers created by the company that is currently logged in to the system. Companies can view their previous job offers, update them, or delete them if necessary.*<br><br><br>

[![update-job-offer-ekswteriko.png](https://i.postimg.cc/JhJS3vdC/update-job-offer-ekswteriko.png)](https://postimg.cc/mcLdBXsm)
*This screenshot shows the form that companies can use to update their existing job offers.Once the company has made their changes, they can submit the form to update the offer in the system.*<br><br><br>
