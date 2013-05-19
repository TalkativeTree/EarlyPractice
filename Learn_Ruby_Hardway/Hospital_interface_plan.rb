HospitalInterface --> Admin
Person --> patient
       --> Employee --> Doctor
       				--> Nurse
       				--> Janitor

1. start Hopsital Interface
2. load log in screen
3. enter account name
4. return error if account doesn't exist
5. ask for password
6. return error if password doesn't exist
7. provide options to user
	Admin: 1. access file
			  A) medical records
			  B) employee directory
              C) employee information
           2. add employee
              A) get information
			  B) add information to employee directory
              C) if access_type = medical records
              D) add to user database
    Doctor/Nurse/Recptionist
           1. access files
    Janitor/patient
           1. access personal information


Support structure

HospitalInterface

1. load Interface
	1. welcome
		A) print welcome screen
	2. log in
		A) ask for "user name" and "password"
	3. verify account
		A) check "user database" for "user name"
		B) see if "passwords" match
        C) load interface if match
		D) reload login screen if it doesnt
    4. load appropriate user interface
       A) print off options for user
       B) receive input from user
       C) act out input from user
       D) reload options screen unless exit
  