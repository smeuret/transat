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

## Development

Using Microsoft [Visual Studio Code](https://code.visualstudio.com) is currently the only supported environment if you need an integrated debugger (completely optional). Follow these steps to get it up and running:

 1. Install the [Ruby 2.3.x 32bits devkit](https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe).
 2. `gem install ruby-debug-ide -v 0.6.0`
 3. `gem install debase -v 0.2.2.beta11` ([or higher](https://github.com/denofevil/debase/releases)))
 4. Finally make sure that the Ruby language support is installed in VS Code. In VS Code, press F1, type ext install then search for ruby.

### Launching from VS Code  

The `launch.json` file included in the project should work right away. See the [Ruby Plug-in doc](https://github.com/rubyide/vscode-ruby/wiki/2.-Launching-from-VS-Code) for more details.

## TODO

 * Make launchable from a `.rbw` file
 * Package as a gem
