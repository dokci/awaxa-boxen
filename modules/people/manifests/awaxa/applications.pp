class people::awaxa::applications {

  include chrome
  include dropbox
  include foreman
  include gimp
  include googledrive
  include heroku
  include hipchat
  include iterm2::colors::arthur
  include iterm2::colors::saturn
  include iterm2::colors::solarized_dark
  include iterm2::colors::solarized_light
  include iterm2::colors::zenburn
  include iterm2::stable
  class { 'mailbox': version => '0.3.14' }
  include nimbus
  include onepassword
  include prince
  include sizeup
  include tunnelblick::beta
  include vlc

  class { 'powerline':
    manage_font_library_dir => true,
  }

  package { 'GoogleVoiceAndVideoSetup':
    ensure   => present,
    source   => 'http://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg',
    provider => 'pkgdmg',
  }
}
