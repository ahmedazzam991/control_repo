class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }    
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDrtsc7jDGd1G38B+/8GDlzeSdkGwf6b0GrinPB9FxUHY8QiTXpqobsXagr0icRIFEYrTeUq3UZ82fW9jptEgIeN03XR7ZiMr7iTXG/BB1E+npWEq0/ZCUnbotWTXh9D4SXjylQHPi7sZ/FzshxPfCx71d74Wkd77thI3g7tFtrzCpkhBf6j7o3E9gyTu+SGIVJfDU9Ea5FSl+/EGTUBJP18hPQ8u5nN1WTYgmYFmvwQIqDuCfNfnTidE93J9z0PH+YztvMxf5FLDeYVB3KTaBKg0Ir3C4NRlB/cD9aUd6JFgQ51TRUZ6vkrOO3ybF+UWzAeWt1JxiWVWy99pJ2V3Yd',
        }
 }       
