# data-insertion-and-handling-nulls-
 1. Creating a Table (Schema Design)
Before storing any data, a table must be created with a defined structure. This structure includes:

Column names

Data types (e.g., text, numbers, dates)

Constraints such as:

Primary Key (ensures uniqueness)

Not Null (prevents missing values)

Unique (prevents duplicate entries)

Default values (used when no value is given)

🔹 2. Inserting Data
The INSERT operation is used to add new rows to a table.

You can insert complete data or partial data.

If some fields are not provided, the database can either:

Use the default value (if defined), or

Store NULL (if allowed).

This allows flexibility in data entry and supports real-world cases where not all information is available immediately.

🔹 3. Handling NULL Values
NULL represents a missing or unknown value in a database.

It is not the same as zero or empty string.

NULLs are useful when data is temporarily unavailable.

Special care is needed when comparing or filtering NULL values using SQL commands.

🔹 4. Using Default Values
A default value is automatically used when no data is provided for a column during insertion.

It helps in maintaining consistency.

Reduces manual input and avoids NULLs where not desired.

🔹 5. Updating Data
The UPDATE operation changes existing data in one or more rows of a table.

Used when existing records need correction or completion.

Often used to replace NULL values with actual values once they become available.

Must be used carefully with a condition to avoid updating all records.

🔹 6. Deleting Data
The DELETE operation removes unwanted records from a table.

Typically used with a condition to target specific rows.

Helps in maintaining a clean and relevant dataset.

Should be handled carefully to avoid accidental loss of data.

🔹 7. Viewing Data
The SELECT statement is used to view the current contents of a table.

It helps to verify inserted, updated, or deleted records.

It can be used to filter, sort, or display specific fields as needed.

