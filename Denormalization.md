## About
Denormalization is a database optimization technique in which we add redundant data to one or more tables. This can help us avoid costly joins in a relational database. Note that denormalization does not mean not doing normalization. It is an optimization technique that is applied after doing normalization.


### Pros of Denormalization:-
- Retrieving data is faster since we do fewer joins
- Queries to retrieve can be simpler(and therefore less likely to have bugs), since we need to look at fewer tables.

### Cons of Denormalization:-
- Updates and inserts are more expensive.
- Denormalization can make update and insert code harder to write.
- Data may be inconsistent . Which is the “correct” value for a piece of data?
- Data redundancy necessitates more storage.
