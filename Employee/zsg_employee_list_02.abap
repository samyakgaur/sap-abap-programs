*&---------------------------------------------------------------------*
*& Report  ZSG_EMPLOYEE_LIST_02
*& created by samyak gaur on 13th june to learn about variables and constants
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zsg_employee_list_02.

TABLES zsg_employee.

* declaring an integer , keyword 'value' is used to initialize it
DATA integer01 TYPE i VALUE 0.

* declaring a packed decimal . packed decimal can store till 14 decimal places to initialize a decimal variable we use keyword value but we use the format '5.5' to initalize as if we
* dont put it in '' we might terminate the sentence
DATA packed_decimal01 TYPE p.

* specify the number of decimal places we want to store we use the keyword decimals
DATA packed_decimal02 TYPE p DECIMALS 2.

* another way of declaring a field using keyword like . we use 'like' keyword when we want to update just one variable and hence others are updated automatically .
* for example we change the decimal places to 4 .
DATA packed_decimal03 LIKE packed_decimal01.

*declaring fields same as the tables field
DATA new_surname LIKE zsg_employee-surname.

*declaring constants
CONSTANTS packed_decimal04 TYPE p DECIMALS 1 VALUE '1.0'.

*peforming basic calculations is like any other programming languages [ '+' '-' '/' '*' are the symbols ]
DATA result LIKE packed_decimal04.

result = integer01 + packed_decimal04.

WRITE result.
