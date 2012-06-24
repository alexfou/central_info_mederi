Feature: Log in process
	In order to identify each type of user
	As a admin of the application
	I want to render the correct view depending of the type of user
	
    @log_in_fail
	Scenario: Show error message in home page for log in failure
		Given the following user records exists
		  |username|email|password|user_type|
		  |Bob|b@b.com|bbb|requester|
		  |Admin|a@a.com|aaa|admin|

		Given I am on the home page
		Then I should see "Ingrese con su usuario"
	  	And I fill in "email" with "a@a.com"
	  	And I fill in "password" with "zzz"
	  	And I press "log_in_submit"
	  	Then I should see "Usuario y/o contrasenia incorrectos"