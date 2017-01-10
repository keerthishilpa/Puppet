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
       content => 'L3&L4 Shared Delivery Team........',
      }

    service {'httpd':
      ensure => running,
      enable => true,
    }
} 
