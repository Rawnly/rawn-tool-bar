module.exports =
  activate: (state) ->
    require('atom-package-deps').install('rawn-tool-bar')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'rawn-tool-bar'
    @toolBar.addButton
      icon: 'document-text'
      callback: 'application:new-file'
      tooltip: 'New'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'folder'
      callback: 'application:open-file'
      tooltip: 'Open...'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'star'
      callback: 'application:open-your-snippets'
      tooltip: 'Snippets'
      iconset: 'ion'
    @toolBar.addSpacer()
    if atom.packages.getLoadedPackage('term3')
      @toolBar.addButton
        icon: 'code'
        callback: 'term3:open'
        tooltip: 'Open Terminal'
        iconset: 'ion'
    # else if atom.packages.getLoadedPackage('terminal-plus')
    #   # body...
    if atom.packages.getLoadedPackage('minimap')
      @toolBar.addButton
        icon: 'map'
        callback: 'minimap:toggle'
        tooltip: 'Toggle Minimap'
        iconset: 'ion'

    if atom.packages.getLoadedPackage('atom-html-preview')
      @toolBar.addButton
        icon: 'social-html5' #html5-plain
        callback: 'atom-html-preview:toggle'
        tooltip: 'HTML Preview'
        iconset: 'ion' #devicon

    if atom.packages.getLoadedPackage('markdown-preview')
      @toolBar.addButton
        icon: 'social-markdown'
        callback: 'markdown-preview:toggle'
        tooltip: 'Markdown Preview'
        iconset: 'ion'

    if atom.packages.getLoadedPackage('git-plus')
      @toolBar.addButton
        icon: 'paper-airplane'
        callback: 'git-plus:add-all-commit-and-push'
        tooltip: 'Push All'
        iconset: 'ion'
    @toolBar.addSpacer()
    if atom.packages.getLoadedPackage('fixmyjs')
      @toolBar.addButton
        icon: 'social-javascript' #javascript-plain
        callback: 'FixMyJS'
        tooltip: 'FixMyJs'
        iconset: 'ion' #devicon
    if atom.packages.getLoadedPackage('autoprefixer')
      @toolBar.addButton
        icon: 'social-css3' #fireball
        callback: 'autoprefixer'
        tooltip: 'Autoprefixer'
        iconset: 'ion'
    if atom.packages.getLoadedPackage('atom-beautify')
      @toolBar.addButton
        icon: 'wand'
        callback: 'atom-beautify:beautify-editor'
        tooltip: 'Beautify'
        iconset: 'ion'
    @toolBar.addSpacer()
    @toolBar.addButton
      icon: 'gear-a'
      callback: 'settings-view:open'
      tooltip: 'Open Settings View'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'more'
      callback: 'command-palette:toggle'
      tooltip: 'Toggle Command Palette'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'sourcetree-plain'
      callback: 'tree-view:toggle'
      tooltip: 'Tree View'
      iconset: 'devicon'
