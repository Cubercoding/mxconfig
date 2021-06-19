# ReTExt configuration

## Using ReText stylesheets

To change the look of the ReText Editor, use:

- qss-files for the editor-pane
- css-files for the preview-pane

ReText will pick up these files when specified in the `~/.config/ReText project/ReText.conf`-file:

```
appStyleSheet=[filepath.qss]
styleSheet=[filepath.css]
useWebKit=true
```

The `appStyleSheet`- and `styleSheet`-parameters only allow absolute pathnames. System variables like `$HOME` or aliases like `~` cannot be used to refer to the user's home directory. To avoid having to use the username in the path, save the stylesheets in the `etc`-directory and refer to those files instead:

```
appStyleSheet=/etc/md-qt.qss
styleSheet=/etc/preview-houdini.css
useWebKit=true
```

## ReText.backup

The `ReText.conf`-file is not included in the git repository, to avoid automatically added entries in the file to be included in the git. Instead, `ReText.backup` is included in the git repository.
