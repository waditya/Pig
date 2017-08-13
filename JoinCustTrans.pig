A = load 'Customers.csv' using PigStorage (',') as (AcctNo, AcctName, Address, City, State, ZIP);
B = load 'Results/part-r-00000' as (AcctNo, PartNo, Price, Qty);
C = join A by (AcctNo), B by (AcctNo);
store C into 'Joined';
