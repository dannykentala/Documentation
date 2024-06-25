In addition to specifying the maximum length of the VARCHAR column, it’s also possible to set a minimum length using the optional keyword [CHECK](https://www.sqltutorial.net/check-constraint.html). For example, VARCHAR(50) CHECK (LEN(column_name) >= 3) would specify a minimum length of 3 characters for the column.
## References
https://www.sqltutorial.net/varchar.html