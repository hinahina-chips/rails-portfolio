class QiitaClient
    include HTTParty
    base_uri 'https://qiita.com/api/v2'
  
    def initialize(access_token)
      @access_token = access_token
    end
  
    def get_my_posts
      headers = {
        'Authorization' => "Bearer #{@access_token}",
        'Content-Type' => 'application/json'
      }
  
      response = self.class.get('/authenticated_user/items', headers: headers)
      response.parsed_response
    end
  end