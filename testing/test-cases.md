\# Prime Digitizers Service Management Portal - Testing Plan



\## Functional Testing



| Test Case ID | Feature | Test Description | Expected Result | Status |

|---|---|---|---|---|

| TC-01 | Backend Health Check | Open `/api/health` endpoint | Server returns health check success message | Pending |

| TC-02 | User Registration | Register a new client user | User is saved in database with hashed password | Pending |

| TC-03 | User Login | Login with valid credentials | JWT token and user details are returned | Pending |

| TC-04 | Invalid Login | Login with wrong password | Error message is returned | Pending |

| TC-05 | View Services | Fetch all services | Services are returned from MySQL database | Pending |

| TC-06 | Create Service | Admin creates a new service | Service is inserted into database | Pending |

| TC-07 | Update Service | Admin updates service information | Service record is updated successfully | Pending |

| TC-08 | Delete Service | Admin deletes a service | Service is removed from database | Pending |

| TC-09 | Submit Design Request | Client submits a design request | Request is saved with Pending status | Pending |

| TC-10 | View Client Requests | Client views own requests | Only client’s own requests are displayed | Pending |

| TC-11 | View All Requests | Admin views all design requests | All client requests are displayed | Pending |

| TC-12 | Update Request Status | Admin changes request status | Request status updates successfully | Pending |

| TC-13 | Role-Based Access | Client tries to access admin-only API | Access denied message is returned | Pending |

| TC-14 | Delete Request | Client/admin deletes a request | Request is removed based on permissions | Pending |



\## Security Testing



| Test Case ID | Security Area | Test Description | Expected Result | Status |

|---|---|---|---|---|

| ST-01 | Password Security | Check database password storage | Passwords are stored as bcrypt hashes | Pending |

| ST-02 | Token Authentication | Access protected route without token | Request is rejected | Pending |

| ST-03 | Role Protection | Client accesses admin route | Access denied response is returned | Pending |



\## Usability Testing



| Test Case ID | Area | Test Description | Expected Result | Status |

|---|---|---|---|---|

| UT-01 | Navigation | User moves between pages | Navigation works clearly and consistently | Pending |

| UT-02 | Forms | User submits forms with required fields | Forms validate input correctly | Pending |

| UT-03 | Error Messages | User enters invalid data | Clear error message is displayed | Pending |

| UT-04 | Responsiveness | Open application on different screen sizes | Layout remains readable and usable | Pending |

