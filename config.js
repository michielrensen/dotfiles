module.exports = {
  brew: [
    // http://conqueringthecommandline.com/book/ack_ag
    'ack',
    'ag',
    'awscli',
    // Install GNU core utilities (those that come with OS X are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    'composer',
    'coreutils',
    'dos2unix',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'fortune',
    'gawk',
    // http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
    'gifsicle',
    'gnupg21',
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'gnu-sed --default-names',
    // better, more recent grep
    'homebrew/dupes/grep',
    'hub',
    'imagemagick',
    'imagesnap',
    // jq is a sort of JSON grep
    'jq',
    // Install some other useful utilities like `sponge`
    'moreutils',
    'nmap',
    'openconnect',
    'pinentry-mac',
    'reattach-to-user-namespace',
    // better/more recent version of screen
    'homebrew/dupes/screen',
    'tmux',
    'tree',
    'ttyrec',
    // better, more recent vim
    // 'macvim --override-system-vi',
    'watch',
    // Install wget with IRI support
    'wget --enable-iri',
    'm-cli'
  ],
  cask: [
    //'adium',
    //'amazon-cloud-drive',
    'atom',
    //'box-sync',
    //'comicbooklover',
    //'diffmerge',
    'dropbox',
    //'evernote',
    'gpgtools',
    'hub',
    //'ireadfast',
    'iterm2',
    //'macvim',
    //'sizeup',
    //'sketchup',
    'slack',
    'the-unarchiver',
    //'torbrowser',
    //'transmission',
    'vlc',
    'xquartz',
    'chefdk'
  ],
  gem: [
    //'git-up'
  ],
  npm: [
    'antic',
    'buzzphrase',
    'eslint',
    'instant-markdown-d',
    'npm-check',
    'yo',
    'generator-dockerize',
    'gulp',
    'prettyjson',
    'trash',
    'vtop'
  ]
};
