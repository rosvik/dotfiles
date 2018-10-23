## Sample initialization file for GNU nano.
##
## This file should not be in DOS or Mac format, and characters
## specially interpreted by the shell should not be escaped here.
##
## To make sure an option is disabled, use "unset <option>".
##
## For the options that take parameters, the default value is given.
## Other options are unset by default.
##
## Quotes inside string parameters don't have to be escaped with
## backslashes.  The last double quote in the string will be treated as
## its end.  For example, for the "brackets" option, ""')>]}" will match
## ", ', ), >, ], and }.

## Make the 'nextword' function (Ctrl+Right) stop at word ends
## instead of at beginnings.
# set afterends

## When soft line wrapping is enabled, make it wrap lines at blanks
## (tabs and spaces) instead of always at the edge of the screen.
set atblanks

## Automatically indent a newly created line to the same number of
## tabs and/or spaces as the preceding line -- or as the next line
## if the preceding line is the beginning of a paragraph.
set autoindent

## Back up files to the current filename plus a tilde.
# set backup

## The directory to put unique backup files in.
# set backupdir ""

## Use bold text instead of reverse video text.
# set boldtext

## The characters treated as closing brackets when justifying paragraphs.
## This may not include any blank characters.  Only closing punctuation,
## optionally followed by these closing brackets, can end sentences.
# set brackets ""')>]}"

## Do case-sensitive searches by default.
# set casesensitive

## Constantly display the cursor position in the status bar.  Note that
## this overrides "quickblank".
# set constantshow

## Use cut-from-cursor-to-end-of-line by default.
# set cutfromcursor
## (The old form, 'cut', is deprecated.)

## Enable hard-wrapping and set the target width, both for automatic
## line wrapping and for justifying paragraphs.  If the value is 0 or
## less, the wrapping point will be the screen width minus this number.
# set fill -8

## Remember the used search/replace strings for the next session.
# set historylog

## Display line numbers to the left of the text.
set linenumbers

## Enable vim-style lock-files.  This is just to let a vim user know you
## are editing a file [s]he is trying to edit and vice versa.  There are
## no plans to implement vim-style undo state in these files.
# set locking

## The opening and closing brackets that can be found by bracket
## searches.  They cannot contain blank characters.  The former set must
## come before the latter set, and both must be in the same order.
# set matchbrackets "(<[{)>]}"

## Use the blank line below the title bar as extra editing space.
set morespace

## Enable mouse support, if available for your system.  When enabled,
## mouse clicks can be used to place the cursor, set the mark (with a
## double click), and execute shortcuts.  The mouse will work in the X
## Window System, and on the console when gpm is running.
set mouse

## Switch on multiple file buffers (inserting a file will put it into
## a separate buffer).
# set multibuffer

## Don't convert files from DOS/Mac format.
# set noconvert

## Don't display the helpful shortcut lists at the bottom of the screen.
# set nohelp

## Don't automatically add a newline when a file does not end with one.
# set nonewlines

## Don't pause between warnings at startup.  Which means that only the
## last one will be readable (when there are multiple ones).
# set nopauses

## Do not automatically hard-wrap text.
# set nowrap

## Set operating directory.  nano will not read or write files outside
## this directory and its subdirectories.  Also, the current directory
## is changed to here, so any files are inserted from this dir.  A blank
## string means the operating-directory feature is turned off.
# set operatingdir ""

## Remember the cursor position in each file for the next editing session.
set positionlog

## Preserve the XON and XOFF keys (^Q and ^S).
# set preserve

## The characters treated as closing punctuation when justifying
## paragraphs.  They cannot contain blank characters.  Only closing
## punctuation, optionally followed by closing brackets, can end
## sentences.
# set punct "!.?"

## Do quick status-bar blanking.  Status-bar messages will disappear after
## 1 keystroke instead of 26.  Note that "constantshow" overrides this.
# set quickblank

## The email-quote string, used to justify email-quoted paragraphs.
## This is an extended regular expression.  The default is:
# set quotestr "^([ 	]*([#:>|}]|//))+"

## Fix Backspace/Delete confusion problem.
# set rebinddelete

## Fix numeric keypad key confusion problem.
# set rebindkeypad

## Do extended regular expression searches by default.
# set regexp

## Put the cursor on the highlighted item in the file browser;
## useful for people who use a braille display.
# set showcursor

## Make the Home key smarter.  When Home is pressed anywhere but at the
## very beginning of non-whitespace characters on a line, the cursor
## will jump to that beginning (either forwards or backwards).  If the
## cursor is already at that position, it will jump to the true
## beginning of the line.
# set smarthome

## Use line-by-line scrolling instead of chunk-by-chunk.
set smooth

## Enable soft line wrapping (AKA full-line display).
set softwrap

## Use this spelling checker instead of the internal one.  This option
## does not have a default value.
# set speller "aspell -x -c"

## Allow nano to be suspended.
# set suspend

## Use this tab size instead of the default; it must be greater than 0.
set tabsize 4

## Convert typed tabs to spaces.
# set tabstospaces

## Save automatically on exit; don't prompt.
# set tempfile

## Snip whitespace at the end of lines when justifying or hard-wrapping.
# set trimblanks
## (The old form, 'justifytrim', is deprecated.)

## Disallow file modification.  Why would you want this in an rcfile? ;)
# set view

## The two single-column characters used to display the first characters
## of tabs and spaces.  187 in ISO 8859-1 (0000BB in Unicode) and 183 in
## ISO-8859-1 (0000B7 in Unicode) seem to be good values for these.
## The default when in a UTF-8 locale:
# set whitespace "»·"
## The default otherwise:
# set whitespace ">."

## Detect word boundaries differently by treating punctuation
## characters as parts of words.
# set wordbounds

## The characters (besides alphanumeric ones) that should be considered
## as parts of words.  This option does not have a default value.  When
## set, it overrides option 'set wordbounds'.
# set wordchars "<_>."


## Paint the interface elements of nano.  These are examples;
## by default there are no colors, except for errorcolor.
set titlecolor red
set statuscolor brightred
set errorcolor brightwhite,magenta
set selectedcolor brightblack,green
set numbercolor red
set keycolor red
set functioncolor red

## In root's .nanorc you might want to use:
# set titlecolor brightwhite,magenta
# set statuscolor brightwhite,magenta
# set errorcolor brightwhite,red
# set selectedcolor brightwhite,cyan
# set numbercolor magenta
# set keycolor brightmagenta
# set functioncolor magenta


## Setup of syntax coloring.
##
## Format:
##
## syntax "short description" ["filename regex" ...]
##
## The "none" syntax is reserved; specifying it on the command line is
## the same as not having a syntax at all.  The "default" syntax is
## special: it takes no filename regexes, and applies to files that
## don't match any other syntax's filename regexes.
##
## color foreground,background "regex" ["regex"...]
## or
## icolor foreground,background "regex" ["regex"...]
##
## "color" will do case-sensitive matches, while "icolor" will do
## case-insensitive matches.
##
## Valid color names ares: white, black, normal, red, blue, green,
## yellow, magenta, cyan.  For foreground colors, you may use the
## prefix "bright" to get a stronger highlight.
##
## To use multi-line regexes, use the start="regex" end="regex"
## [start="regex" end="regex"...] format.
##
## If your system supports transparency, not specifying a background
## color will use a transparent color.  If you don't want this, be sure
## to set the background color to black or white.
##
## All regexes should be extended regular expressions.
##
## If you wish, you may put your syntax definitions in separate files.
## You can make use of such files as follows:
##
## include "/path/to/syntax_file.nanorc"
##
## Unless otherwise noted, the name of the syntax file (without the
## ".nanorc" extension) should be the same as the "short description"
## name inside that file.  These names are kept fairly short to make
## them easier to remember and faster to type using nano's -Y option.

## To include all existing syntax definitions, you can do:
include "/usr/local/share/nano/*.nanorc"


## Key bindings.
## See nanorc(5) (section REBINDING KEYS) for more details on this.

## If your Backspace key behaves as Delete (when ssh'ing in from another
## machine, for example), set this to make it behave as Backspace again:
# bind Del backspace all

## The <Ctrl+Delete> keystroke deletes the word to the right of the cursor.
## On some terminals the <Ctrl+Backspace> keystroke produces ^H, which is
## the ASCII character for backspace, so it is bound by default to the
## backspace function.  The <Backspace> key itself produces a different
## keycode, which is hard-bound to the backspace function.  So, if you
## normally use <Backspace> for backspacing and not ^H, you can make
## <Ctrl+Backspace> delete the word to the left of the cursor with:
# bind ^H cutwordleft main

