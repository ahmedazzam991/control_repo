node default {
}
node 'master_puppet_vm' {
  include role::master_server
}

