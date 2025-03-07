# 🏨 Hotel Reservation System

## 📌 Project Overview
The **Hotel Reservation System** is a Java-based desktop application that enables users to book, manage, and cancel hotel reservations seamlessly. This project demonstrates **frontend-backend integration** using **Java (Swing/JavaFX), MySQL, JDBC, and JData Connector**, applying **database management skills** for real-world applications.

## 🚀 Features
- 🏠 **User-Friendly Interface** – Interactive UI for easy navigation.
- 📅 **Room Booking & Management** – Book, modify, or cancel reservations.
- 👤 **User Authentication** – Secure login & registration system.
- 📊 **Admin Panel** – Manage reservations, workers, customers, and rooms.
- 🔗 **Database Integration** – Uses **MySQL with JDBC & JData Connector**.

## 🛠️ Tech Stack
- **Programming Language**: Java  
- **IDE**: NetBeans  
- **Database**: MySQL  
- **Database Connectivity**: JDBC, JData Connector  
- **UI Framework**: Swing/JavaFX   

## ⚙️ Installation & Setup
### 1️⃣ Clone the Repository
```sh
git clone https://github.com/Mushaf-Khalil/Hotel-Reservation-System.git
```
```sh
cd Hotel-Reservation-System
```


### 2️⃣ Install MySQL Server and Workbench

- Download and install **MySQL Server & MySQL Workbench** from [here](https://dev.mysql.com/downloads/).

- During installation, configure:
  - Set the **root password** (remember it for later).
  - Enable **MySQL Server to run on startup**.
- Verify installation by running:
```sh
  mysql -u root -p
```

### 3️⃣ Set Up MySQL Database
- Open **MySQL Workbench** or use a terminal.
- Create the database:
  ```sql
  CREATE DATABASE hotel_reservation;
  ```

  ### 4️⃣ Configure Database Connection
- Open **NetBeans** and load the project.
- Locate the **JDBC connection file** (e.g., `DBConnection.java`).
- Update the database credentials:
  ```java
  String url = "jdbc:mysql://localhost:3306/hotel_reservation";
  String user = "root";
  String password = "yourpassword";
  Connection con = DriverManager.getConnection(url, user, password);
  ```
  ### 5️⃣ Install Dependencies

#### Add JDBC Driver (MySQL Connector/J)
1. Download `mysql-connector-java.jar` from the [MySQL website](https://dev.mysql.com/downloads/connector/j/).
2. Open **NetBeans** and navigate to your project.
3. Right-click **Libraries** → **Add JAR/Folder**.
4. Select the downloaded `mysql-connector-java.jar` file and add it to the project.

#### Add JData Connector (If Required)
- If your project requires **JData Connector**, ensure it is installed and properly configured.

### 6️⃣ Run the Application

1. Open **NetBeans** and load the project.
2. Ensure that all dependencies (such as `mysql-connector-java.jar`) are added correctly.
3. Compile the project to check for any errors.
4. Start your **MySQL Server** and ensure the database is running.
5. Run the application in **NetBeans** by clicking **Run > Run Project** or pressing `Shift + F6`.
6. The application should launch, allowing you to interact with the hotel reservation system.


### 7️⃣ Test the System

1. **Login & User Authentication**  
   - Log in as an **admin** or **register a new user**.  
   - Ensure authentication works correctly, preventing unauthorized access.

2. **Booking Functionality**  
   - Make a new reservation and verify that it is successfully saved in the **MySQL database**.  
   - Check if booked rooms are marked as unavailable.

3. **Modify & Cancel Reservations**  
   - Test the modification feature to update an existing booking.  
   - Attempt to **cancel** a reservation and confirm that it is removed from the system.

4. **Database Verification**  
   - Open **MySQL Workbench** or use the terminal to query the database:  
     ```sql
     SELECT * FROM reservations;
     ```
   - Ensure all records are stored, updated, and deleted properly.

5. **Error Handling & Validation**  
   - Test invalid inputs (e.g., empty fields, incorrect date formats) to verify validation mechanisms.  
   - Ensure appropriate error messages appear for incorrect actions.

6. **System Performance**  
   - Run multiple transactions to check system stability and response time.  
   - Ensure there are no crashes or unexpected behavior.


## 🔮 Future Work

The project can be enhanced with the following features:

- ✅ **Online Payment Integration** – Implement secure payment gateways like **PayPal** and **Stripe** to allow users to make online payments for hotel reservations.  
- ✅ **Advanced Search & Filtering** – Add filters for **room availability, price range, amenities, and customer preferences** to enhance the booking experience.  
- ✅ **Email & SMS Notifications** – Integrate **email and SMS alerts** to notify users about their booking confirmations, cancellations, and reminders.  
- ✅ **Multi-User Role Management** – Implement different access levels for **Admin, Receptionist, and Customers** to ensure better security and role-specific functionalities.  
- ✅ **Data Analytics Dashboard** – Develop an **admin dashboard** with real-time insights on hotel performance, booking trends, and customer preferences.  
- ✅ **Cloud Database Integration** – Migrate the **MySQL database to the cloud** (e.g., AWS RDS, Google Cloud SQL) for better scalability and remote access.  
- ✅ **Mobile-Friendly UI** – Upgrade the UI using **JavaFX** or build a dedicated **Android/iOS mobile app** for easy hotel reservations on the go.  
- ✅ **REST API Integration** – Create a RESTful API to allow third-party applications to access and integrate hotel booking data with other services.  

