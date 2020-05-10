# Spring-Security-Authorization
Authorization Demo Application with 3 roles (MANAGER, EMPLOYEE, ADMIN) Stack: Java (8), Spring Framework (5.2.3), Spring Security (5.2.3), MySQL (5.1.48), Servlet (3.1.0)
***

## Security
### Basic Authentication
The project use the basic role authentication functionality.

This is done via roles that a user can have. 

The existing roles are listed below with the corresponding permissions

ADMIN -> for managing users and managers
MANAGER -> specific group for leaders
EMPLOYEE -> basic role that see a few controls
There are three test users with the usernames and passwords:
  john test123 (EMPLOYEE)
  mary test123 (EMPLOYEE, MANAGER)
  susan test123 (EMPLOYEE, ADMIN)
