# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '47.26.3.24',
            '47.26.3.24:8080',
            '172.31.54.169:8080',
            '172.31.54.169',
            'http://172.31.54.169:8080/',
            'https://172.31.54.169:8080/',
            'http://47.26.3.24:8080/',
            'http://47.26.3.24:8080/',
            'http://172.31.54.169',
            'http://47.26.3.24',
            'https://172.31.54.169',
            'https://47.26.3.24'

    resource '/api/v1/*',
             headers: :any,
             methods: %i[get post put patch delete options head]

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head]
  end
end
