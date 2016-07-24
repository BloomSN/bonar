# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Bonar::Application

<<<<<<< HEAD
=======
#cors
>>>>>>> b0b8b5556390be2305cffbcd6b7a9e072130a03b
require 'rack/cors'
use Rack::Cors do

  # allow all origins in development
  allow do
    origins '*'
    resource '*', 
        :headers => :any, 
<<<<<<< HEAD
        :methods => [:get]
  end
end
=======
        :methods => [:get, :post, :delete, :put, :options]
  end
end
>>>>>>> b0b8b5556390be2305cffbcd6b7a9e072130a03b
