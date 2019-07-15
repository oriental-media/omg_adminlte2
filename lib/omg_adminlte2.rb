require "omg_adminlte2/version"

module OmgAdminlte2
  class Error < StandardError; end
  # Your code goes here...
  module Rails
    require 'omg_adminlte2/engine'
  end
end
