
                                                              MID_LEVEL QUERIES

SCENARIO 1:
/*Extract the customer's first and last name, account type, and balance, linking the data across the three tables: Customers, Accounts, and Branches.*/

 select accounts.accountid,concat(firstname," ",lastname) as full_name,accounts.accounttype,accounts.balance,
     branches.branchname from customers inner join accounts on customers.customerid = accounts.customerid
     inner join branches on branches.branchid = accounts.branchid;
+-----------+--------------------+-------------+-----------+-----------------------+
| accountid | full_name          | accounttype | balance   | branchname            |
+-----------+--------------------+-------------+-----------+-----------------------+
|        31 | Edward Clark       | Checking    |   3200.00 | Downtown Main         |
|        36 | Kathleen Hall      | Checking    |   2100.00 | Downtown Main         |
|        41 | Jack Wright        | Checking    |   5400.00 | Downtown Main         |
|        46 | Heather Adams      | Checking    |   1420.00 | Downtown Main         |
|        51 | Walter Mitchell    | Checking    |   6200.00 | Downtown Main         |
|        56 | Ann Campbell       | Checking    |   2300.00 | Downtown Main         |
|        61 | Gary Stewart       | Checking    |   4900.00 | Downtown Main         |
|        66 | Emily Morgan       | Checking    |   1950.00 | Downtown Main         |
|        71 | Justin Cooper      | Checking    |   3400.00 | Downtown Main         |
|        76 | Ashley Torres      | Checking    |    940.00 | Downtown Main         |
|        81 | Alexander Watson   | Checking    |   4650.00 | Downtown Main         |
|        86 | Vera Bennett       | Checking    |   2150.00 | Downtown Main         |
|        32 | Amy Rodriguez      | Savings     |  14500.00 | Silicon Valley Branch |
|        37 | Raymond Allen      | Business    | 135000.00 | Silicon Valley Branch |
|        42 | Janet Lopez        | Savings     |  11200.00 | Silicon Valley Branch |
|        47 | Peter Baker        | Business    |  78000.00 | Silicon Valley Branch |
|        52 | Martha Perez       | Savings     |  18500.00 | Silicon Valley Branch |
|        57 | Arthur Parker      | Business    | 167000.00 | Silicon Valley Branch |
|        62 | Anna Morris        | Savings     |  13200.00 | Silicon Valley Branch |
|        67 | Stephen Bell       | Business    | 125000.00 | Silicon Valley Branch |
|        72 | Donna Richardson   | Savings     |  10500.00 | Silicon Valley Branch |
|        77 | Samuel Peterson    | Business    |  71000.00 | Silicon Valley Branch |
|        82 | Theresa Brooks     | Savings     |  15400.00 | Silicon Valley Branch |
|        87 | Patrick Wood       | Business    | 162000.00 | Silicon Valley Branch |
|        33 | Stephen Lewis      | Business    |  92000.00 | Metro Hub             |
|        38 | Janet Young        | Savings     |    950.00 | Metro Hub             |
|        43 | Dennis Hill        | Business    |  56000.00 | Metro Hub             |
|        48 | Diane Gonzalez     | Savings     |   4100.00 | Metro Hub             |
|        53 | Harold Roberts     | Business    | 104000.00 | Metro Hub             |
|        58 | Stephanie Evans    | Savings     |   1450.00 | Metro Hub             |
|        63 | Nicholas Rogers    | Business    |  88000.00 | Metro Hub             |
|        68 | Amanda Murphy      | Savings     |    520.00 | Metro Hub             |
|        73 | Brandon Cox        | Business    |  49000.00 | Metro Hub             |
|        78 | Ruby Gray          | Savings     |   3800.00 | Metro Hub             |
|        83 | Frank Kelly        | Business    |  98000.00 | Metro Hub             |
|        88 | Shannon Barnes     | Savings     |   1150.00 | Metro Hub             |
|        34 | Sharon Lee         | Checking    |    650.00 | Sunshine Coast        |
|        39 | Patrick Hernandez  | Checking    |   4300.00 | Sunshine Coast        |
|        44 | Maria Scott        | Checking    |   1850.00 | Sunshine Coast        |
|        49 | Henry Nelson       | Checking    |   3600.00 | Sunshine Coast        |
|        54 | Christine Turner   | Checking    |    980.00 | Sunshine Coast        |
|        59 | Ryan Edwards       | Checking    |   4800.00 | Sunshine Coast        |
|        64 | Margaret Reed      | Checking    |    420.00 | Sunshine Coast        |
|        69 | Larry Bailey       | Checking    |   3100.00 | Sunshine Coast        |
|        74 | Lois Howard        | Checking    |   1450.00 | Sunshine Coast        |
|        79 | Gregory Ramirez    | Checking    |   2400.00 | Sunshine Coast        |
|        84 | Sara Sanders       | Checking    |    680.00 | Sunshine Coast        |
|        89 | Jack Ross          | Checking    |   3800.00 | Sunshine Coast        |
|        35 | Gregory Walker     | Savings     |   7800.00 | Pacific Center        |
|        40 | Carolyn King       | Savings     |    320.00 | Pacific Center        |
|        45 | Jerry Green        | Savings     |   6900.00 | Pacific Center        |
|        50 | Frances Carter     | Savings     |    850.00 | Pacific Center        |
|        55 | Douglas Phillips   | Savings     |   8900.00 | Pacific Center        |
|        60 | Elizabeth Collins  | Savings     |    650.00 | Pacific Center        |
|        65 | Eric Cook          | Savings     |   6900.00 | Pacific Center        |
|        70 | Kimberly Rivera    | Savings     |    220.00 | Pacific Center        |
|        75 | Benjamin Ward      | Savings     |   5900.00 | Pacific Center        |
|        80 | Rachel James       | Savings     |    180.00 | Pacific Center        |
|        85 | Raymond Price      | Savings     |   7600.00 | Pacific Center        |
|        90 | Kathleen Henderson | Savings     |    450.00 | Pacific Center        |
+-----------+--------------------+-------------+-----------+-----------------------+
60 rows in set (0.011 sec)

SCENARIO 2:
Retrieving the names of customers who referred another customer, along with the names of the new customers who have joined the bank.

 select
     concat(new_customer.firstname,"  ",new_customer.lastname) as new_customer,
     concat(referr_customer.firstname,"  ",referr_customer.lastname) as referr_customer
     from customers as new_customer inner join customers as referr_customer
     on referr_customer.customerid = new_customer.ReferredByCustomerID;
+----------------------+-------------------+
| new_customer         | referr_customer   |
+----------------------+-------------------+
| Amy  Rodriguez       | Edward  Clark     |
| Sharon  Lee          | Amy  Rodriguez    |
| Kathleen  Hall       | Edward  Clark     |
| Janet  Young         | Stephen  Lewis    |
| Carolyn  King        | Gregory  Walker   |
| Janet  Lopez         | Raymond  Allen    |
| Maria  Scott         | Jack  Wright      |
| Heather  Adams       | Dennis  Hill      |
| Diane  Gonzalez      | Jerry  Green      |
| Frances  Carter      | Peter  Baker      |
| Martha  Perez        | Walter  Mitchell  |
| Christine  Turner    | Harold  Roberts   |
| Ann  Campbell        | Douglas  Phillips |
| Stephanie  Evans     | Arthur  Parker    |
| Elizabeth  Collins   | Ryan  Edwards     |
| Anna  Morris         | Gary  Stewart     |
| Margaret  Reed       | Anna  Morris      |
| Emily  Morgan        | Gary  Stewart     |
| Amanda  Murphy       | Nicholas  Rogers  |
| Kimberly  Rivera     | Eric  Cook        |
| Donna  Richardson    | Stephen  Bell     |
| Lois  Howard         | Justin  Cooper    |
| Ashley  Torres       | Brandon  Cox      |
| Ruby  Gray           | Benjamin  Ward    |
| Rachel  James        | Samuel  Peterson  |
| Theresa  Brooks      | Alexander  Watson |
| Sara  Sanders        | Frank  Kelly      |
| Vera  Bennett        | Raymond  Price    |
| Shannon  Barnes      | Patrick  Wood     |
| Kathleen  Henderson  | Jack  Ross        |
| Alice  Jenkins       | Dennis  Coleman   |
| Diana  Powell        | Alice  Jenkins    |
| Christina  Patterson | Dennis  Coleman   |
| Joan  Flores         | Jerry  Perry      |
| Judy  Butler         | Peter  Long       |
| Hermione  Granger    | Harry  Potter     |
| Bruce  Wayne         | Hermione  Granger |
| Diana  Prince        | Harry  Potter     |
| Tony  Stark          | Ronald  Weasley   |
| Natasha  Romanoff    | Clark  Kent       |
| Arthur  Curry        | Peter  Parker     |
| Bruce  Banner        | Barry  Allen      |
| Wanda  Maximoff      | Oliver  Queen     |
| Sam  Wilson          | Stephen  Strange  |
| Scott  Lang          | Carol  Danvers    |
| TChalla  Wakanda     | Hope  Van Dyne    |
| Leia  Organa         | Luke  Skywalker   |
| Lando  Calrissian    | Han  Solo         |
| Padme  Amidala       | Anakin  Skywalker |
| Mace  Windu          | ObiWan  Kenobi    |
| Jesse  Pinkman       | Walter  White     |
| Gustavo  Fring       | Jesse  Pinkman    |
| Michael  Scott       | Walter  White     |
| Pam  Beesly          | Jim  Halpert      |
| Ryan  Howard         | Dwight  Schrute   |
| John  Watson         | Sherlock  Holmes  |
| Mycroft  Holmes      | John  Watson      |
| Arthur  Pendragon    | James  Moriarty   |
| Guinevere  Camelot   | Irene  Adler      |
| Morgana  Pendragon   | Merlin  Emrys     |
+----------------------+-------------------+
60 rows in set (0.010 sec)

SCENARIO 3:
Designing a process wherein the status of the linked account changes to "active" when the card status changes to "active."

 start transaction;
Query OK, 0 rows affected (0.004 sec)

 update cards set cardstatus = "blocked" where accountid =60;
Query OK, 1 row affected (0.010 sec)
Rows matched: 1  Changed: 1  Warnings: 0

 update accounts set accountstatus = "blocked" where accountid =60;
Query OK, 1 row affected (0.007 sec)
Rows matched: 1  Changed: 1  Warnings: 0

 rollback;
Query OK, 0 rows affected (0.047 sec)

SCENARIO 4:
Display the branch names and the total amounts of "successful" transactions at each branch, ordered from highest to lowest.

mysql> select branches.branchname as branch_name,transactions.transactionstatus,sum(amount) as total_amount
    -> from transactions inner join branches on transactions.branchid = branches.branchid
    -> where transactions.transactionstatus = "success"
    -> group by branches.branchname,transactions.transactionstatus
    -> order by sum(amount) desc;
+-----------------------+-------------------+--------------+
| branch_name           | transactionstatus | total_amount |
+-----------------------+-------------------+--------------+
| Silicon Valley Branch | Success           |     57330.00 |
| Metro Hub             | Success           |     20315.00 |
| Downtown Main         | Success           |      4580.00 |
| Sunshine Coast        | Success           |      3360.00 |
| Pacific Center        | Success           |      1215.00 |
+-----------------------+-------------------+--------------+
5 rows in set (0.011 sec)

SCENARIO 5:
Extracting the IDs of customers who currently have more than one "active" loan registered in their name.

    select customers.customerid,concat(firstname,"  ",lastname) as full_name
     from loans inner join customers on customers.customerid = loans.customerid
     where loanstatus = "active"
     group by customers.customerid,concat(firstname,"  ",lastname)
     having count(loanid) > 1;
+------------+----------------+
| customerid | full_name      |
+------------+----------------+
|         36 | Kathleen  Hall |
+------------+----------------+
1 row in set (0.044 sec)

SCENARIO 6:
Write a query that extracts the "Balance" key value from the `NewValue` text column in the `audit_logs` table for accounts that have been updated.

       select
      NewValue->>'$.Balance' AS balance FROM     audit_logs
      WHERE     TableName = 'Accounts'     AND OperationType = 'UPDATE';
+---------+
| balance |
+---------+
| 3050.0  |
| 85000.0 |
| NULL    |
| 10150.0 |
| 1840.0  |
| 140.0   |
+---------+
6 rows in set (0.007 sec)

SCENARIO 7:
Designing a mechanism that resets the "daily withdrawn amount" column to zero for all cards at the end of the day.

     create event daily_withdrawal
     on schedule every 1 day
     starts "2026-07-16  00:00:00"
     do update cards set DailyWithdrawnAmount = 0;
Query OK, 0 rows affected, 1 warning (0.125 sec)

SCENARIO 8:
Retrieve full customer details and account numbers for all loans with a "next due date" less than 30 days away.

    select accounts.accountid,concat(firstname,"  ",lastname) as full_name,datediff(nextduedate,curdate()) as maturity_date
    from accounts inner join loans on accounts.accountid = loans.accountid
     inner join customers on customers.customerid = loans.customerid
     having maturity_date >= 0 and maturity_date < 30;
+-----------+---------------------+---------------+
| accountid | full_name           | maturity_date |
+-----------+---------------------+---------------+
|        31 | Edward  Clark       |            21 |
|        32 | Amy  Rodriguez      |            28 |
|        33 | Stephen  Lewis      |            16 |
|        34 | Sharon  Lee         |            17 |
|        35 | Gregory  Walker     |            25 |
|        36 | Kathleen  Hall      |            21 |
|        37 | Raymond  Allen      |            24 |
|        39 | Patrick  Hernandez  |            20 |
|        40 | Carolyn  King       |            26 |
|        41 | Jack  Wright        |            13 |
|        44 | Maria  Scott        |            10 |
|        45 | Jerry  Green        |            18 |
|        46 | Heather  Adams      |            11 |
|        47 | Peter  Baker        |            28 |
|        48 | Diane  Gonzalez     |            23 |
|        49 | Henry  Nelson       |            20 |
|        50 | Frances  Carter     |             7 |
|        52 | Martha  Perez       |            25 |
|        53 | Harold  Roberts     |            17 |
|        54 | Christine  Turner   |            15 |
|        55 | Douglas  Phillips   |            21 |
|        56 | Ann  Campbell       |             7 |
|        58 | Stephanie  Evans    |            24 |
|        59 | Ryan  Edwards       |             8 |
|        61 | Gary  Stewart       |            26 |
|        63 | Nicholas  Rogers    |            21 |
|        64 | Margaret  Reed      |            21 |
|        65 | Eric  Cook          |            28 |
|        66 | Emily  Morgan       |            11 |
|        67 | Stephen  Bell       |            28 |
|        69 | Larry  Bailey       |            24 |
|        71 | Justin  Cooper      |            18 |
|        74 | Lois  Howard        |            16 |
|        75 | Benjamin  Ward      |            24 |
|        76 | Ashley  Torres      |            16 |
|        78 | Ruby  Gray          |            28 |
|        79 | Gregory  Ramirez    |            26 |
|        80 | Rachel  James       |            11 |
|        81 | Alexander  Watson   |            11 |
|        83 | Frank  Kelly        |            24 |
|        84 | Sara  Sanders       |            21 |
|        85 | Raymond  Price      |            26 |
|        86 | Vera  Bennett       |            11 |
|        89 | Jack  Ross          |            14 |
|        90 | Kathleen  Henderson |            11 |
+-----------+---------------------+---------------+
45 rows in set (0.049 sec)

SCENARIO 9:
Generating reports on transactions where the source and destination account IDs belong to the same branch,
 versus transactions conducted between two different branches.

mysql> with
    -> same_trans as(
    -> select transactionid,sourceaccountid,destinationaccountid
    -> from transactions
    -> where sourceaccountid = destinationaccountid),
    -> diff_trans as (
    -> select transactionid,sourceaccountid,destinationaccountid
    -> from transactions
    -> where sourceaccountid != destinationaccountid)
    -> select same_trans.transactionid,diff_trans.transactionid
    -> from same_trans inner join diff_trans on same_trans.sourceaccountid = diff_trans.sourceaccountid;
+---------------+---------------+
| transactionid | transactionid |
+---------------+---------------+
|            99 |            31 |
+---------------+---------------+
1 row in set (0.012sec)