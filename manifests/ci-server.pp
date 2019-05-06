node /ci-server/ {

 class { 'jenkins':
   http_port               => 8080,
 }


}
