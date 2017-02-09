class httpd1 {

    package {'httpd':
      ensure => present,
    }
    file {'/var/wwww':  # Creating Document Root
       ensure => "directory",
       mode   => 'ug+w',
    }

  file {'/var/www/html/index.html': # Creating Index file
       ensure  => file,
       mode => '0644',
       owner => root,
       group => root,
       content => ' Team........',
      }

    service {'httpd':
      ensure => running,
      enable => true,
    }
 file {'/etc/httpd/conf/httpd.conf':
 ensure => file,
content => template('/etc/puppetlabs/code/environments/production/manifests/modules/httpd1/templates/xyz.erb')
}
}
$greetings = "Welcome"
$serverRoot = "/etc/httpd"
$user = "apache"
$group = "apache"
$logLevel = "debug"
$port = "80"
$serverName = "104.199.172.6"
$redirectTo = "https://www.google.com/"
$my_ip = "https://104.199.172.6"
 


