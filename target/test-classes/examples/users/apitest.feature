Feature: Test rest api
        Background:
            Given url applicationBaseUrl
            Given print applicationBaseUrl
           # Given def configure url = applicationBaseUrl
             
        @getapi
        Scenario: get the list of user detail
            Given  path '/api/users?page=2'
              And method get
              And print response
              And status 200
              And match responseStatus == 200
              And match response.data[0].id == 1
              And match response.data[0].name contains 'ceru'
              
            

        # Scenario: get the single user detail
        #     Given  path '/api/users/2'
        #       And method get
        #       And print response
        #       And status 200

        # Scenario: create user detail
        #     Given  path '/api/users/2'
        #       And request {"name": "morpheus","job": "leader"}
        #       And method post
        #       And print response
        #       And status 201

        # Scenario: update user detail
        #     Given  path '/api/users/2'
        #       And request {"name": "morpheus","job": "zion resident"}
        #       And method put
        #       And print response
        #       And status 200

        # Scenario: update partial user detail
        #     Given  path '/api/users/2'
        #       And request {"name": "morpheus","job": "zion resident"}
        #       And method patch
        #       And print response
        #       And status 200

        # Scenario: update delete user detail
        #     Given  path '/api/users/2'
        #       And method delete
        #       And print response
        #       And status 204