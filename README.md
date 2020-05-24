## Things to do after installing Apricity OS (an Arch Linux-based system)

#### Installation Sequence
0. Install NUmix Gnome Theme and Dash to Dock on Tweak Tool
https://itsfoss.com/install-numix-ubuntu/
https://micheleg.github.io/dash-to-dock/

1. Install Common Programs
    - **script:** ./install_common_programs.sh

2. Install Dev Programs
    - **script:** ./install_dev_programs.sh

3. Install Python Packages Programs
    - **script:** ./install_python_packages.sh

4. Set up my personal Sublime Configuration
    - **script:** ./my_sublime_settings.sh

5. Install Atlas on Performance Mode (if necessary)
    - Arch Linux references:
        + http://www.astr.tohoku.ac.jp/~akhlaghi/ATLAS_install.html
        + http://verahill.blogspot.com.br/2013/02/336-compiling-atlas-netblas-lapack-and.html
    - Or
    - **script:** ././atlas_+_numpy/intall_atlas.sh
    - **info:** ./atlas_+_numpy/README.txt
    - If you cannot install it, install the normal version which is in **./install_dev_programs.sh**

6. Do the Manual Installation
    - Instructions below

7. Install and Configure IFT
    - see: ./ift.txt

#### Manual Installation
+ Change the prompt display:
    + Put the following commands into ~/.profile (there is no ~/.bashrc in newest Mac OS)
        + PS1='\u@\h:\w\$ '
+ Put color on prompt:
    + http://blog.taylormcgann.com/tag/prompt-color/
    + To color code your prompt on a Mac, use the following template:
        + \[\033[COLOR_CODE_HERE\]PROMPT_ESCAPE_OR_TEXT_HERE\[\033[0m\]
    + Here’s a comprehensive list of color encoding:
    ```
    # Regular Colors
    \[\033[0;30m\] # Black
    \[\033[0;31m\] # Red
    \[\033[0;32m\] # Green
    \[\033[0;33m\] # Yellow
    \[\033[0;34m\] # Blue
    \[\033[0;35m\] # Purple
    \[\033[0;36m\] # Cyan
    \[\033[0;37m\] # White

    # High Intensty
    \[\033[0;90m\] # Black
    \[\033[0;91m\] # Red
    \[\033[0;92m\] # Green
    \[\033[0;93m\] # Yellow
    \[\033[0;94m\] # Blue
    \[\033[0;95m\] # Purple
    \[\033[0;96m\] # Cyan
    \[\033[0;97m\] # White

    # Background
    \[\033[40m\] # Black
    \[\033[41m\] # Red
    \[\033[42m\] # Green
    \[\033[43m\] # Yellow
    \[\033[44m\] # Blue
    \[\033[45m\] # Purple
    \[\033[46m\] # Cyan
    \[\033[47m\] # White

    # High Intensty backgrounds
    \[\033[0;100m\] # Black
    \[\033[0;101m\] # Red
    \[\033[0;102m\] # Green
    \[\033[0;103m\] # Yellow
    \[\033[0;104m\] # Blue
    \[\033[10;95m\] # Purple
    \[\033[0;106m\] # Cyan
    \[\033[0;107m\] # White

    #Replace any leading leading 0; with 1; for bold colors
    #Replace any leading 0; with 4; to underline
    ```

    I use the colors: PS1='\[\033[0;94m\]\u\[\033[0m\]@\[\033[0;33m\]\h\[\033[0m\]:\w\$ '

- Configure VC Code
    + Install the plugin: Settings Sync
    + Log into github through the plugin and download all my custom settings from there



- Adding Apricity OS shortcuts
    + Show Applications > Keyboard > Shortcuts
        * Custom Shortcuts = terminator, ctrl+'

- Startup Applications
    + Startup applications > Add Skype

- Sublime Packages
    - ctrl + shift + p: Install Package Controls

    - Some packages to install:
        - SideBarEnhancements
        - Alignment: ctrl+alt+a to align
        - BracketHighlighter
        - AStyleFormatter - ctrl+alt+f para alinhar todo o arquivo, ctrl+k+f para alinhar um trecho selecionado
        - Cython
        - Javatar
        - LateXTool
            + It's required to install: latexmk
            + After Installing, Reconfigure LatexTools
                * Preferences > Package Settings > LatexTools > Reset user setting to default
            + Edit custom settins in Preferences > Package Settings > LatexTools > Settings User:
                * "keep_focus": false,
                * "display_log" : true,
                * "ref_add_parenthesis": true
                * "env_auto_trigger": true,
        - LaTeX-cwl
        - Git
        - Markdown Preview
        - C++11
        - Aligntab: aligns by : ; , .
        - VCSGutter (enables some symbols aside of the code to indicate SVN changes)
        - JsonLint
        - Fold Comments
            - Go to Preferences > Package Settings > Fold Comments > Key Bindings - Default
            - Set: ctrl+. to fold/unfold all comments in the text

        - Clang-Complete (Auto completion to C/C++)
            - https://packagecontrol.io/packages/Clang-Complete
            - Install Clang (It was already installed via script install_dev_programs.sh)
            `$ yaourt -S clang --noconfirm`

            ```
            $ unzip ./sublime/Clang-Complete.zip -d ~/.config/sublime-text-3/Packages
            or
            $ cd ~/.config/sublime-text-3/Packages/
            $ git clone https://github.com/lvzixun/Clang-Complete.git
            ```
            - Now
            ```
            $ cd ~/.config/sublime-text-3/Packages/Clang-Complete
            $ ln -sf /usr/lib/llvm-5.0/lib/libclang.so.1 lib/libclang.so // check the llvm version installed and change it if necessary 
            $ make cc_lib
            ```
            - Go to the configuration file in *~/.config/sublime-text-3/Packages/Clang-Complete/cc.sublime-settings* and add the following content
            ```
            "additional_language_options":
            {
                // For example, you can use "c++": ["-std=c++11"] to enable C++11 features.
                "c++" : ["-std=c++11"],
                "c": ["-std=c11"],
                ...
            },
            
            ...

            // Replace the include_options
            // CHECK the versions of GCC, CLANG, and LLVM
               "include_options":
               [
                    "-isystem", "/usr/include",
                    "-isystem", "/usr/include/c++/*",
                    "-isystem", "/usr/lib/gcc/x86_64-linux-gnu/5/include",
                    "-isystem", "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed",
                    "-isystem", "/usr/lib/clang/4.0/include/",
                    "-isystem", "/usr/include/linux/",
                    "-Wall"
                ],
            ```
            - In the configuration file of the projects, for example, **~/Dropbox/workspace/apps/ift/ift.sublime-project**, add
            ```
            "settings":
            {
                "cc_include_options":
                [
                    "-I/home/sbmmartins/Dropbox/workspace/ift/include"
                ]
            }
            ```

- Eclipse
    + Import the preferences: ./eclipse/my_preferences.epf
    + Install Subclipse plugin
        * Help > Eclipse marketplace > subclipse
        * Help > Eclipse marketplace > column4eclipse
        * Help > Eclipse marketplace > e(fx)clipse
        * To remove the JavaHL error when loading eclipse:
            - Window > Preferences > Team > SVN
            - Choose another "SVN Interface"

- Clion:
    + whereis clion
    - Force Font Anti-Alising:
        - Open: /opt/clion/bin/clion64.vmoptions and add:
            ```
            -Xms1024m
            -Dawt.useSystemAAFontSettings=on
            -Dswing.aatext=true
            -Dsun.java2d.xrender=true
            ```

    - Import my custom (MyClionPreferences.jar) preferences on Clion:
        - File > Import Setting
        - My preferences includes color scheme, some configuration editor zoom with ctrl+scroll, show line number, font anti-aliasing, sublime-like keybind, etc.
        - It is required the fonts: monaco.ttf and FreeSans.ttf
        - Enabled equal alignment: Settings > Editor > Code Style > C/C++ > Wrapping and Braces > Variable groups > Align in columns
    
    - Use the newest GDB:
        + Install gdb on your system
        + On Clion, go to: File > Settings > Build, Execution, Deployment > Toolchains > Use specified GDB
            * Then, put /usr/bin/gdb
        
    - Install plugins: Go to File > Settings > Plugins > Browse repositories
        - CamelCase: alt+shift+u
        
    - To create snippets:
        - File > Settings > Editor > Live Templates
        
    - Some interesting Custom Keybinds:
        - Ctrl+. = Fold all comments
        - Ctrl+shift+. = Expand all comments
        - Align Equals = ctrl+alt+a
        - Ctrl+shift+MouseButton1 = Adds carets (multiple cursors) where you click - like Ctrl+MouseButton1 on Sublime
        - Ctrl+Alt+DragMouseButton1 = Add carets where in the lines that you select
        - Alt+Shift+Up/Down = Clone a caret above/bottom
        - Ctrl+MouseButton1 or F12 = Go to Definition
        - Ctrl+Alt+Enter = Split Line - E.g: If the caret is in the half of a string and you enter
                                        with this shortcut, the line will be splitted and the "" will
                                        be added automatically
        - Ctrl+. = Fold/Unfold code blocks
        - Ctrl+P = Search a file - like Sublime
        - Ctrl+Shift+P = Search a symbol, like Classes, Structs, Functions, Methods...
        - Ctrl+Alt+P = Search Classes and Structs...
        - Ctrl+H = Replace (in the current file)
        - Ctrl+Shift+H = Replace in a path
        - Ctrl+M or Shift+F4 = Open Source in a new window
        - Ctrl+Shift+E = Split pane/editor vertically
        - Ctrl+Shift+O = Split pane/editor horizontally
        - Ctrl+Shift+W = Unsplit the current panes/editors
        - Ctrl+Alt+Shift+W = Unsplit all panes/editors
        - Ctrl+E = Move to the next Splitter
        - Ctrl+Q = Move to the previou Splitter
        - Alt+1 = Show/Hide the Project Tool Window
        - Ctrl+T = Open Recent Files Window
        - Ctrl+Shift+T = Reopen Closed Tabs
        - Ctrl+F4 = Close All Tabs

- IntelliJ
    - Similar Settings with Clion
    - Import my custom (MyClionPreferences.jar) preferences on Clion:
        - File > Import Setting
        - My preferences includes color scheme, some configuration editor zoom with ctrl+scroll, show line number, font anti-aliasing, sublime-like keybind, etc.
        - It is required the fonts: monaco.ttf and FreeSans.ttf
        - Enabled equal alignment: Settings > Editor > Code Style > Java > Wrapping and Braces
            - Assignment Statement: all boxes
            - Group Declaration: all boxes
            - Ternary Operation: all boxes
            - Array initializer: all boxes
            - Assert statement: all boxes
            - Enum constants: Wrap if long
    - Plugins:
        - String Manipulation
        - BitBucket:
            - Try to install the official plugin
                - It had problems with IntelliJ 13
            - If problems, install the alternative plugin
                - ./intellij/bitbucket_alternative_plugin.zip
            - To create a new Project and Push to BitBucket:
                - Create a new Project
                - VCS / Import into Version Control / Share Project
                    - Set: Private, SSH repository access, GIT
                - It creates the project into BitBucket and already commits the initial files in the projects on IntelliJ
                - To push the project to BitBucket:
                    - VCS / Git / Push
            - PS: The Tool Buttons view (View / Tool Buttons) shows the Version Control stuffs
    - Some interesting Custom Keybinds (similar to Clion, but with additional ones):
        - Ctrl+Shift+U     = Upper/Lower Case
        - Ctrl+Shift_Alt+U = Change style code [String Manipulation] (ex: snake_case, cammel_case, ...)


- Kingsoft Office (WPS)
    - Adding the pt_BR dict
        ```
        $ mkdir ~/.kingsoft/office6/dicts (check the directory)
        $ cp -ax ./wps/pt_BR ~/.kingsoft/office6/dicts
        ```
        - Now, go to WPS and check: Review > Spell Check
    - Solving the Formula fonts missing
        `sudo cp -ax wps/wps_symbol_fonts/ /usr/share/fonts/wps-office/`


- Important Python Packages
    + Numpy
    + Scipy
    + Nibabel
    + NiPype - http://miykael.github.io/nipype-beginner-s-guide/installation.html

