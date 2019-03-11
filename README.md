# Emacs
On mac, to get the latest version, install with brew and some new version (e.g. `emacs-25.3`) is installed. So in *~/.bash_profile*, just make an alias that maps "emacs" to "emacs-25.3". The config file is in *~/.emacs.d/init.el*

On Ubuntu, per [this article](https://qiita.com/ytoda129/items/58078d8c7e74d9144014), install emacs25.

* Enter tutorial with "ctrl-h t"
* C-b C-f C-n C-pn
* M-b M-f to go f/b one word
* C-a C-e to go to ends of line
* C-k kills whole line, if nothing is selected
* C-h b shows all commands

If you have trouble downloading packages, try doing `M-x package-refresh-contents`.
## python

* [Emacs – The Best Python Editor?](https://realpython.com/emacs-the-best-python-editor/)
: this article has tips for setting up basic emacs, too

also install: `pip install jedi flake8 autopep8`

ctrl-c ctrl-c to execute python

## mac keyboard
To use option key as meta key, go to preferences for Terminal.app and in the terminal profile, check "use option key as meta key".
* [Mac Key Mode](https://www.emacswiki.org/emacs/MacKeyMode):
lets you use the command⌘ key like always in emacs. But it seems to be old, so I should probably avoid it...

## Git
*ctrl-x g* to see info about current repo
*n* and *p* to move around, *s* to stage. *c c* to commit. Write a message, then *ctrl-c ctrl-c* to commit.
* [Magit](https://magit.vc/)
* [install Magit](https://magit.vc/manual/magit/Installing-from-an-Elpa-Archive.html#Installing-from-an-Elpa-Archive)

## Packages
Emacs has facility that lets you download & install packages

* [Emacs lisp packages](http://www.gnu.org/software/emacs/manual/html_node/emacs/Packages.html#Packages)

## buffers
*C-x 0* to delete selected window, *C-x 1* to delete all windows except selected

* C-x C-f to find a file and open it
* C-x C-b to list buffers
* C-x 2 splits screen into 2 windows
* C-x o switches cursor to other window

## Markdown
Use [markdown-mode](https://jblevins.org/projects/markdown-mode/)

* C-c C-l inserts link
* To generate previews and such, use the  *libtext-multimarkdown-perl* and *perl-doc* packages
* to view preview of current Markdown in a browser, C-c C-c p

## files created by emacs
"filename~" is created as a backup of the past version of the file, "#filename#" is created as auto-save files.
