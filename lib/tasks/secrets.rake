require 'rake'
require 'optparse'

def key!
  key_file_path = File.join(Rails.root, '.sekrets.key')
  exit(-1) unless File.exist?(key_file_path)
  File.open(key_file_path).read.strip  
end

namespace :secrets do |args|
  desc 'Encrypt application.yml --> application.yml.enc'
  task :encrypt do
    `cat ./config/application.yml | sekrets write config/application.yml.enc --key #{key!}` 
    puts "Encrypted application.yml to application.yml.enc"
  end
  
  desc 'Decrypt application.yml.enc --> application.yml'
  task :decrypt do
    `sekrets read config/application.yml.enc --key #{key!} > ./config/application.yml`
    puts "Decrypted application.yml.enc to application.yml"
  end
end