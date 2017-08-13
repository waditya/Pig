A = load 'Customers.csv' using PigStorage (',') as (Acct_no, Acct_name, Address, City, State, ZIP);
B = Filter A by State matches 'CA';
store B into 'Filtered';
