define people::awaxa::linked_dotfile (
  $src = "${::boxen::config::srcdir}/dotfiles",
){
  file { "/Users/${::boxen_user}/${title}":
    ensure  => 'link',
    target  => "${src}/home/${title}",
    require => Repository[$src],
  }
}
