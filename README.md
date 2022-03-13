# Open in iTerm

This xcode project is inspired by other AppleScripts and Apps (with the same exact name), but it actually works for all macOS versions between 10.9 and whatever the current version is.

It just uses an AppleScript to fetch the path from finder and makes a systemcall in main.m that spins an instance of iTerm with the path as an argument.

The app can be adapted to run different programs in the same way (Open in VSCode or whatever) by just modifying the app bundle identifier in main.m.

I will include better documentation later on.

Credits:
- Icon for iTerm app: https://github.com/jasonlong/iterm2-icons
- Similar app that works for VS Code: https://github.com/sozercan/OpenInCode 
- AppleScript to fetch path: [https://github.com/rkanter/Open-iTerm-or-Terminal-Here...](https://github.com/rkanter/Open-iTerm-or-Terminal-Here...)


License:
Do whatever you want with this, just be nice...
