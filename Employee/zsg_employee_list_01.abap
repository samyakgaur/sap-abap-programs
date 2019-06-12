*&---------------------------------------------------------------------*
*& Report  ZSG_EMPLOYEE_LIST_01
*& Created by : samyak gaur on 11th june 2019
*&---------------------------------------------------------------------*
*&
*&LINE_SIZE is used to limit the size of column in output
*&---------------------------------------------------------------------*
REPORT zsg_employee_list_01 LINE-SIZE 132.                   "this is a statement and a report statement is always the first statement in any exe program also every statement in should finish with a .


TABLES zsg_employee.                                          "including the table i.e this makes a temporary structure of the table mentioned so that we can import data into it from the actual table

SELECT * FROM zsg_employee.
  WRITE zsg_employee.                                        "write statement is similar to print()
  NEW-LINE.                                                   "to print new line
ENDSELECT.

ULINE.

skip 2.                                                       "skips two lines 
SELECT * FROM zsg_employee.
  WRITE / zsg_employee-surname.                                "if we want to write particular fields 
  skip 2.
ENDSELECT.

*using chaining statements to write many lines using one write command

ULINE.

SELECT * FROM zsg_employee.                                    "chain statements
  WRITE: / zsg_employee-first_name,
           zsg_employee-surname.
ENDSELECT.
