begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

ensure_in_path 'lib'
require 'harakiri'

task :default => 'test:run'
task 'gem:release' => 'test:run'

Bones {
  name 'harakiri'
  authors 'Lucas Allan Cardoso'
  email 'lucas.allan@gmail.com'
  url 'http://www.lucasallan.com'
  version '0.0.1'
}

