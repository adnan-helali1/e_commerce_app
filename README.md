# 🛒 B2B Mediation Platform – Store Mobile App (Flutter)

A production-ready **B2B mobile application** for supermarkets to manage supplier offers, build their own catalog, handle purchases, and perform sales operations — powered by a **Laravel 12 API (JWT Authentication)**.

---

## 🚀 Overview

This app is part of a **B2B Mediation System** that connects:

* 🏭 Suppliers (data-only, managed by admin)
* 🏪 Stores (mobile app users)
* 🧑‍💼 Admin (web dashboard)

> The Store app is the main consumer of the system, handling real business workflows:
> **Browse → Select → Purchase → Sell → Track → Analyze**

---

## 🧠 Core Business Logic

```
Supplier (data only)
   ↓
Supplier Offers (SupplierProduct)
   ↓
Store Catalog (selected offers)
   ↓
Purchases (orders to suppliers)
   ↓
Sales (POS system)
   ↓
Ledger (financial tracking)
```

---

## 📱 Features

### 🔐 Authentication (JWT)

* Login / Register / Logout
* Secure token-based requests
* Session expiration handling
* API error handling (validation, auth, etc.)

---

### 🏠 Dashboard (Home)

* Daily sales overview
* Pending purchases
* Low stock alerts
* Quick actions

---

### 🛍️ Supplier Offers (Marketplace)

* Browse supplier offers (NOT generic products)
* Filter by:

  * Supplier
  * Category
  * Stock availability
* Each product shows:

  * Supplier name
  * Buy price
  * Stock
  * Status

---

### 📦 Catalog Management

* Add products from supplier offers
* Set custom selling price
* Activate / deactivate products
* Manage store-specific catalog

---

### 🛒 Purchase Orders

* Create orders from multiple suppliers
* Automatic order splitting per supplier
* Order states:

  * draft
  * submitted
  * cancelled
  * received

---

### 💰 Sales (POS System)

* Sell products from catalog
* Real-time stock reduction
* Profit calculation
* Payment handling

---

### 🧾 Sales Orders

* Track all sales
* View details:

  * sell price vs buy price
  * profit

---

### 📊 Ledger (Financial System)

* Track:

  * Credits
  * Debits
* View:

  * Balance
  * Financial summary

---

### 🔔 Notifications

* Order updates
* Low stock alerts
* Sales confirmations

---

### 👤 Profile

* Manage store info
* Logout

---

## 🧩 Architecture

* Clean Architecture
* Feature-based structure
* Reusable components
* API-driven UI

---

## 🔗 Backend API

This app is powered by a Laravel backend:

* JWT Authentication
* RESTful APIs
* Standardized responses
* Form-data support for complex inputs

---

## ⚙️ Tech Stack

* Flutter
* Dart
* REST API (Laravel 12)
* JWT Authentication
* Clean Architecture
* State Management (Bloc / Cubit)

---

## 📸 Screenshots

> /screenshots
>
> <img width="1080" height="2400" alt="register screen" src="https://github.com/user-attachments/assets/b70b1c36-3bf7-4e87-81de-f8a4d8098a7d" />
<img width="1080" height="2400" alt="forget password" src="https://github.com/user-attachments/assets/2e0ac1e1-bb36-4a1d-be32-b7d06d5a7397" />
<img width="1080" height="2400" alt="recover password" src="https://github.com/user-attachments/assets/6de6beb4-6478-4d34-9f9d-c5d2eb82865e" />
<img width="1080" height="2400" alt="login screen" src="https://github.com/user-attachments/assets/57204757-6480-44f6-a875-4d0b6de823ca" />

>
> system design
> <img width="366" height="668" alt="image" src="https://github.com/user-attachments/assets/95b434cf-6271-4257-a178-22f259e5b114" />

---

## 🧪 Demo Accounts

**Store Account**

* Email: `store@client.test`
* Password: `Store@12345`

---

## 📦 Project Structure

```
lib/
 ├── core/
 ├── features/
 │    ├── auth/
 │    ├── home/
 │    ├── offers/
 │    ├── catalog/
 │    ├── orders/
 │    ├── sales/
 │    ├── ledger/
 │    └── profile/
 └── main.dart
```

---

## 🚀 Getting Started

```bash
git clone https://github.com/adnan-helali1/B2B.git
cd project
flutter pub get
flutter run
```

---

## 💡 Key Highlights

* Real-world business logic (NOT demo UI)
* Multi-supplier system
* Catalog-based selling
* POS + Financial tracking
* Fully backend-driven design

---

## 📌 Future Improvements

* Push Notifications
* Offline mode
* Analytics dashboard
* Multi-language support

---   

## 👨‍💻 Author

Adnan Helali
Flutter Developer

---
