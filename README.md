# ROOTS/MIDS 706 - SQL for Data Scientists (Rob Carter, 9/9/2020, MIDS lab 9/14/2020)

Here you will find materials from our 9/9/2020 class, including:

* SQL-FOR-DATA-SCIENTISTS.pdf - a PDF version of the slides from the class session
* class.zip - a zip'd directory named 'class' containing SQL input files to reproduce the databases and tables used in the slides (which will be our starting point for the lab section, for those of you in the MIDS version of the class).
* class/ - the unpacked class.zip archive -- directory containing SQL files for the example databases

To reconstitute the databases used in constructing the examples in the slides, do the following:

* Retrieve this project from the Git server:  git clone https://github.com/carte018/mids706w4.git

* Change into the "mids706w4" subdirectory:  cd mids706w4

* Optionally Unzip the 'class.zip' file into a 'class' subdirectory:  unzip class.zip (note:  the class subdirectory should already exist and be populated, so this is an optional step)

* Make sure your local MySQL server is up and running 

* Create the databases from the SQL files provided as follows:

	* mysql -u root -p -e 'create database running_totals'
	* mysql -u root -p running_totals < class/running_totals.sql

	* mysql -u root -p -e 'create database dewey_cheatham_howe'
	* mysql -u root -p dewey_cheatham_howe < class/dewey_cheatham_howe.sql

	* mysql -u root -p -e 'create database orders'
	* mysql -u root -p  orders < class/orders.sql

	* mysql -u root -p -e 'create database normalized'
	* mysql -u root -p normalized < class/normalized.sql

* Start playing with more advanced SQL!

