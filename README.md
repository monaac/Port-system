# Port-system
an SQL data structure for a Port system:

This data structure includes three tables: ships, docks, and shipments. The ships table stores information about ships, including their name, type, length, and weight. The docks table stores information about docks, including their name, location, and capacity. The shipments table stores information about shipments, including the ship ID, dock ID, arrival time, and departure time.

The relationships between the tables are enforced through foreign key constraints, ensuring that a shipment is only linked to an existing ship and dock. The ships table also has a unique constraint on the name column, ensuring that each ship has a unique name.
