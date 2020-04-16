require 'pry'
class Interface < ActiveRecord::Base


###################################SIGN IN/CREATE PROFILE/EXIT DISPLAY#######################################
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
        puts "                 Please enter your username."
        Member.check_username
    end

    def self.unrecognized_username
        puts <<-unrecognized
                Username not recognized. Please try again.
           Enter 'Create Profile' if you are trying to make a new profile. 
        unrecognized
    end

    def self.under_age
        puts <<-age
                          Sorry!                            
        
            You must be above 21 to use this app.   
        
        age
        self.thank_you_exit
    end

    
    def self.thank_you_exit
        puts <<-thanks
         ___________________________________________ 
        |Thank you for demoing the Elite Squad App. |
        |         We hope to see you soon!          |
        |___________________________________________|
        thanks
        exit
    end
############################################################################################################# 

####################################MEMBER ACCESS/OPTIONS DISPLAY############################################ 

    def self.member_homepage_display
        puts <<-homepage
                            
                            #{Member.set_user_info.name}
                    You are currently : #{Member.set_user_info.tier}
                          You have #{Member.user_visits_count} points.

            Please enter one of the following options.
                      Choose Clubhouses          
             Change Username    Delete Profile   Exit     
        homepage
    end


 def self.sign_in_username_prompt
        puts "                 Please enter your username."
        Member.check_username
    end

    def choose_clubhouse_prompt
        puts "                 Please choose a clubhouse."
        getting_clubs_matching_members
        check_clubhouse
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
########################################################################################################
end