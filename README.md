North Wind Traders’

MSSQL Capstone Project

North Wind Traders’ Capstone Project by Warieta Gift Ejovwoke

Page 2 of 5
Link to the database backup file: Click here

Case
Scenario Analysis and Story Telling
The Northwind Database contains the sales data
for a fictitious company called “Northwind
Traders,” which imports and exports specialty
foods from around the world.
You have been employed as a Data Analyst to
help the company answer some key questions to
take the business forward.

NOTE

Ensure that you identify all the tables that
needs to be considered to solve all the
questions in this project (Study the
Database Schema closely).

North Wind Traders’ Capstone Project by Warieta Gift Ejovwoke

Page 3 of 5
Northwind Database Schema Architectural Breakdown
The classic Northwind database schema represents a typical small-scale relational database
structure for a wholesale trading company (Northwind Traders). It handles everything from catalog
management to internal human resources and customer fulfillment.
The tables are logically grouped into four core business domains:
1. Sales and Ordering Core (The Transactional Heart)
These tables manage the operational lifecycle of sales transactions.
• Orders: Acts as the transactional header for every sale. It captures high-level metadata such
as who purchased the items (CustomerID), which staff member fulfilled the sale
(EmployeeID), the date details (OrderDate), and tracking metrics for logistical delivery
(ShipVia, ShipAddress).
• Order Details: A crucial junction table creating a many-to-many relationship between
Orders and Products. Because an individual order can contain multiple unique products, and
a single product can repeat across multiple separate orders, this table intercepts line-item
specifics. It records snapshots of UnitPrice, Quantity, and applied Discount rates at the exact
moment of purchase.
2. Catalog and Supply Chain (The Inventory)
These tables monitor product supply, item categories, and vendor relationships.
• Products: Holds details for every individual inventory stock-keeping item available for
purchase. It establishes external tracking loops back to its source vendor via SupplierID and
structural classification via CategoryID. It simultaneously manages real-time logistical stock
attributes (UnitsInStock, UnitsOnOrder) alongside active lifecycle flags (Discontinued).

Schema

North Wind Traders’ Capstone Project by Warieta Gift Ejovwoke

Page 4 of 5

• Categories: A standalone lookup configuration used to organize core catalog products into
clean, high-level structural groupings (e.g., Beverages, Confections). It keeps tracking fields
for CategoryName, structural textual descriptions (Description), and binary object fields for
marketing images (Picture).
• Suppliers: Contains detailed directory contact profiles and geographic distribution locations
for the third-party business vendors that supply inventory to Northwind Traders.
3. Customer Management (The Buyers)
These tables coordinate Customer Relationship Management (CRM) tracking structures and target
market audience segmentation.
• Customers: Stores vital demographic data for the business entities making purchases from
Northwind Traders. This records unique identifier tracking tags, corporate entity names,
primary account contact roles, and absolute billing/shipping location addresses.
• CustomerCustomerDemo & CustomerDemographics: A many-to-many bridging layout
deployed to categorize or tag account profiles into targeted demographic segments
(CustomerDesc) for strategic marketing reports and behavioral analytics.
4. Human Resources and Infrastructure (The Internal Team)
These tables layout internal staffing frameworks, management lines, and structural logistical
fulfillment networks.
• Employees: Tracks internal personnel records, background attributes, and structural
employment profiles. It contains a distinct self-referencing relationship line (ReportsTo
targets an separate parent EmployeeID record) which natively constructs the corporate
management hierarchy.
• EmployeeTerritories & Territories: A many-to-many bridging schema. A single employee can
maintain active operational ownership over several distinct geographic territories, while a
single territory can have multiple overlapping field employees assigned to it.
• Region: A high-level lookup reference table providing regional geographic framing to group
granular Territories into macro operational sectors (e.g., Eastern, Western).
• Shippers: A lightweight lookup table identifying the third-party freight logistical distribution
corporations (e.g., Federal Shipping, United Package) responsible for handling freight
shipping operations designated by the core sales records (ShipVia).
Key Relational Strengths to Notice
• Primary and Foreign Keys: Primary Keys (the unique record identifiers, such as ProductID)
map explicitly to matching Foreign Keys in transactional target tables. This strictly enforces
relational database integrity, preventing logical orphan errors (e.g., generating an order line
for a customer or product that does not exist in the database).
• One-to-Many Relationships: The majority of directional vectors connect one side of an
entity to many repeating targets. This architecture guarantees that while a unique individual
Customer record exists exactly once, they maintain the structural capacity to generate an
infinite number of historical downstream Orders.
