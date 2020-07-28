#!ruby

#noinspection RubyResolve
require 'colorize'

# @return [Unit]
def warn
  system "echo 'bin/init.rb mysql57|mysql80|mariadb|postgresql|rabbitmq|redis4|redis5|mongodb|alpine|ubuntu|centos'"
end

# @param [String] cmd
# @return [Unit]
# noinspection RubyResolve
def exec(cmd)
  puts "#{"==>".blue.bold} #{cmd.red.bold}"
  system cmd
end

app = ARGV[0]
warn && exit unless app

case app
  when 'mysql57'
    exec 'docker build -t mysql57 ~/bin/dockerfile/mysql57/'
    exec 'docker rm -f mysql57'
    exec "docker run -d --name mysql57 -v ~/volume/mysql57:/var/lib/mysql -p 3357:3306 -p 33570:33060 mysql57:latest --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --lower_case_table_names=1 --default-time_zone='+8:00'"
  when 'mysql80'
    exec 'docker build -t mysql80 ~/bin/dockerfile/mysql80/'
    exec 'docker rm -f mysql80'
    exec "docker run -d --name mysql80 -v ~/volume/mysql80:/var/lib/mysql -p 3380:3306 -p 33800:33060 mysql80:latest --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --lower_case_table_names=1 --default-time_zone='+8:00'"
  when 'mariadb'
    exec 'docker build -t maria14 ~/bin/dockerfile/mariadb/'
    exec 'docker rm -f maria14'
    exec "docker run -d --name maria14 -v ~/volume/maria14:/var/lib/mysql -p 3307:3306 maria14:latest --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --lower_case_table_names=1 --default-time_zone='+8:00'"
  when 'postgresql'
    exec 'docker build -t postgresql ~/bin/dockerfile/postgresql/'
    exec 'docker rm -f postgresql'
    exec 'docker run -d --name postgresql -v ~/volume/pgdata:/var/lib/postgresql/data -p 5432:5432 postgresql:latest'
  when 'rabbitmq'
    exec 'docker build -t rabbit ~/bin/dockerfile/rabbitmq/'
    exec 'docker rm -f rabbit'
    exec 'docker run -d --name rabbit -v ~/volume/rabbitmq:/var/lib/rabbitmq -p 15672:15672 -p 5672:5672 rabbit:latest'
  when 'redis4'
    exec 'docker build -t redis4 ~/bin/dockerfile/redis4/'
    exec 'docker rm -f redis4'
    exec 'docker run -d --name redis4 -v ~/volume/redis4:/data -p 6380:6379 redis4:latest'
  when 'redis5'
    exec 'docker build -t redis5 ~/bin/dockerfile/redis5/'
    exec 'docker rm -f redis5'
    exec 'docker run -d --name redis5 -v ~/volume/redis5:/data -p 6379:6379 redis5:latest'
  when 'mongodb'
    exec 'docker build -t mongodb ~/bin/dockerfile/mongodb/'
    exec 'docker rm -f mongodb'
    exec 'docker run -d --name mongodb -v ~/volume/mongo:/data/db -p 27017:27017 mongodb:latest'
  when 'alpine'
    exec 'docker build -t alpineos ~/bin/dockerfile/alpine/'
    exec 'docker rm -f alpineos'
    exec 'docker run -d --name alpineos -it alpineos:latest sh'
  when 'ubuntu'
    exec 'docker build -t ubuntuos ~/bin/dockerfile/ubuntu/'
    exec 'docker rm -f ubuntuos'
    exec 'docker run -d --name ubuntuos -it ubuntuos:latest /bin/bash'
  when 'centos'
    exec 'docker build -t centoss ~/bin/dockerfile/centos/'
    exec 'docker rm -f centoss'
    exec 'docker run -d --name centoss -it centoss:latest /bin/bash'
  else
    warn
end
