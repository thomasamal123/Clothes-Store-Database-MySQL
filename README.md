# Clothes Database Project

This project is a MySQL database for a clothing store, created as part of a Database Design and Implementation module.

## Project Contents
- **/sql** – Contains `.sql` files for each table in the database.

##  Database Structure
The database includes:
- Customers and their Addresses
- Products and Product Categories
- Orders and Ordered Items
- Payments, Reviews, Stock, and Delivery

##  How to Import
1. Open phpMyAdmin.
2. Create a new database named `clothes`.
3. Import the SQL files in the following order:
   1. `customer.sql`
   2. `customer_address.sql`
   3. `products.sql`
   4. `product_categories.sql`
   5. `payments.sql`
   6. `orders.sql`
   7. `ordered_items.sql`
   8. `review.sql`
   9. `stock.sql`
   10. `delivery.sql`

---
📄 Ensure to check foreign key constraints when importing in the correct sequence.
