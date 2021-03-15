 require 'Time'

class Application

    def call(env)
        resp = Rack::Response.new
        t = Time.now.hour
        t2 = 12

        if t.to_i < t2
            resp.write["Good Morning!"]
        else 
            resp.write["Good Afternoon!"]
        end

        resp.finish
    end
  
  end 
