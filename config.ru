# class ShowEnv
#   def call(env)
#     [
#       200,
#       { 'Content-Type' => 'text/plain' },
#       env.keys.sort.map { |k| "#{k} = #{env[k]}\n" }
#     ]
#   end
# end

# run ShowEnv.new

# class Foo
#   def call(env)
#     [
#       200,
#       { 'Content-Type' => 'text/plain' },
#       ['Hello']
#     ]
#   end
# end

# run Foo.new

# run lambda { |env| [ 200, { 'Content-Type' => 'text/plain' }, ['Hello']] }

# require 'rack/lobster'
# run Rack::Lobster.new

use Rack::ETag
use Rack::Deflater
use Rack::Static, urls: [''], root: 'public', index: 'index.html'
# run NullEndPoint.new
# run Rack::Directory.new 'public'
run lambda { |env| }
