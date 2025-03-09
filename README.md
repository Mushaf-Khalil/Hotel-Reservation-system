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
cd Hotel-Reservation-System
```

### 2️⃣ Install MySQL Server and Workbench
- Download and install **MySQL Server & MySQL Workbench** from [here](https://dev.mysql.com/downloads/).
- Configure **MySQL Server**:
  - Set the **root password**.
  - Enable **MySQL Server to run on startup**.
- Verify installation:
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
- Update database credentials:
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
Ensure it is installed and properly configured.

### 6️⃣ Run the Application
1. Open **NetBeans** and load the project.
2. Ensure all dependencies (such as `mysql-connector-java.jar`) are added correctly.
3. Compile the project to check for errors.
4. Start **MySQL Server** and ensure the database is running.
5. Run the application in **NetBeans**:
   - Click **Run > Run Project** or press `Shift + F6`.
6. The application should launch for interaction.

### 7️⃣ Test the System
1. **Login & User Authentication**
   - Log in as an **admin** or **register a new user**.
   - Ensure authentication works correctly.

2. **Booking Functionality**
   - Make a new reservation and check if it is stored in **MySQL**.
   - Verify booked rooms are marked unavailable.

3. **Modify & Cancel Reservations**
   - Test updating an existing booking.
   - Cancel a reservation and verify its removal from the system.

4. **Database Verification**
   ```sql
   SELECT * FROM reservations;
   ```

5. **Error Handling & Validation**
   - Test invalid inputs and ensure proper validation.

6. **System Performance**
   - Run multiple transactions to check stability and response time.

## 📺 Screenshots
### **Login Page**
![Login](https://github.com/MOo207/Simple-Hotel-Management-System/blob/master/Screenshots/1-Login.png)

### **Signup Page**
![Signup](https://github.com/MOo207/Simple-Hotel-Management-System/blob/master/Screenshots/2-Signup.png)

### **Forgot Password**
![Forgot Password](https://github.com/MOo207/Simple-Hotel-Management-System/blob/master/Screenshots/3-Forget%20password.png)

### **Admin Dashboard**
![Admin Dashboard](https://github.com/MOo207/Simple-Hotel-Management-System/blob/master/Screenshots/4-Approved%20Agent%20Menu.png)

### **Non-Approved Employee Dashboard**
![Non-Approved Employee](https://github.com/MOo207/Simple-Hotel-Management-System/blob/master/Screenshots/4-Non-Approved%20Agent%20Menu.png)

### **Check-In Page**
![Check In](https://github.com/MOo207/Simple-Hotel-Management-System/blob/master/Screenshots/7-Check%20in.png)

### **Date Picker**
![Date Picker](https://github.com/MOo207/Simple-Hotel-Management-System/blob/master/Screenshots/7-External%20DatePicker.png)

## 🔮 Future Work
Enhancements for future versions:
- ✅ **Online Payment Integration** – Add PayPal, Stripe support.
- ✅ **Advanced Search & Filtering** – Sort by price, amenities, availability.
- ✅ **Email & SMS Notifications** – Booking confirmations & reminders.
- ✅ **Multi-User Role Management** – Different access levels (Admin, Receptionist, Customers).
- ✅ **Data Analytics Dashboard** – Track hotel performance, bookings, and trends.
- ✅ **Cloud Database Integration** – Migrate database to AWS RDS or Google Cloud SQL.
- ✅ **Mobile App** – Develop an Android/iOS app for hotel reservations.
- ✅ **REST API Integration** – Enable third-party access to reservation data.

## 🏆 Contributing
Pull requests are welcome, but for major changes, please open an issue first to discuss what you would like to change.

## ✨ Acknowledgements
Various hotel management applications and academic research inspire this project.

## 👥 Authors
- **Mushaf Khalil** , **Taskeen Abbas** - Developer


