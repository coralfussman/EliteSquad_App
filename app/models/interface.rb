class Interface < ActiveRecord::Base

    def self.greeting
        puts <<-Greeting

                Welcome to the Elite Squad App.   

        Would you like to sign in or create a new profile? 

        ____________________________________________________
        |    Sign in    |    Create Profile    |    Exit    |
        |_______________|______________________|____________|
        Greeting
    end

    def self.sign_in_username_prompt
        puts "               Please enter your username."
        Member.check_username
        puts "                   Welcome, #{Member.get_username}."
    end

    def self.unrecognized_username
        puts "Username not recognized. Please try again."
        puts "Enter 'Create Profile' if you are trying to make a new profile. " 
    end

    def self.under_age
        puts <<-age
        Sorry!                            
        
        You must be above 21 to use this app.   
        
        age
        Member.thank_you_exit
    end

    def self.thank_you_exit
        puts <<-thanks
             ___________________________________________ 
            |  Thank you for using the Elite Squad App. |
            |         We hope to see you soon!          |
            |___________________________________________|
        thanks
        exit
    end

    def self.delete_profile_prompt
        puts <<-delete
         _______________________________________________________________
        |      Are you sure you would like to delete your profile?      |
        |  All accumulated tier points will be lost and unretrievable.  |
        |       Type "DELETE" to continue with profile deletion.        |
        |        Type "GO BACK" to return to member home page.          |
        |_______________________________________________________________|
        delete
    end
end