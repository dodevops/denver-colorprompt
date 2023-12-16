# Default parameters
class colorprompt::params {

  case $facts['os']['family'] {

    'RedHat': {
      $prompt      = '${env}[${userColor}\u\[\e[0m\]@${serverColor}\h\[\e[0m\] \W]\\$ '
    }

    'Debian': {
      $prompt      = '${env}[${userColor}\u\[\e[0m\]@${serverColor}\h\[\e[0m\] \w]\\$ '
    }

    default: {
      fail("Unsupported osfamily: ${facts['os']['family']}")
    }

  }

}
