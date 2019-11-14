# Default parameters
class colorprompt::params {

  case $::osfamily {

    'RedHat': {
      $prompt      = '${env}[${userColor}\u\[\e[0m\]@${serverColor}\h\[\e[0m\] \W]\\$ '
    }

    'Debian': {
      $prompt      = '${env}[${userColor}\u\[\e[0m\]@${serverColor}\h\[\e[0m\] \w]\\$ '
    }

    default: {
      fail("Unsupported osfamily: ${::osfamily}")
    }

  }

}
