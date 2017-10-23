## Transat - The missing transition assessment tool for SmarTeam

## Prerequisites

 * Ruby 2.3.x **32bit** ([Ruby Windows Installer](https://rubyinstaller.org/downloads/))
   * because of a bug in Ruby 2.4.x win32ole
   * because SmarTeam's COM servers are 32bit only
 * Git ([Git Windows Installer](https://git-scm.com/download/win))
   * Optional but prevents a lot of Windows-specific headaches
   * Only needed until Transat gets a proper distribution package
   * Comes with the awesome git-bash shell
   
## Installing (with git-bash)

From the git-bash shell:

Clone the repository somewhere:

```
git clone https://github.com/smeuret/transat.git
cd transat
```

Install the bundler gem:

```
gem install bundler
```

## Installing (without git-bash)

From a 'Command Prompt with Ruby' shell:

 1. Perform the steps in the "with git-bash" section above.

 2. Fix the environment

```
set HOME=%USERPROFILE%
set HOMEDRIVE=%SystemDrive%
set HOMEPATH=%SystemDrive%\Users\%USERNAME%
```

## Launching

Go to the directory where transat resides and run:

```
ruby app/transat.rb
```

## TODO

 * Make launchable from a `.rbw` file
 * Package as a gem
