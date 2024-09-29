Bando-Ragdoll is a lightweight and efficient script for FiveM that allows players to experience realistic ragdoll physics. With this script, players can toggle ragdoll mode on and off, adding an extra layer of fun and realism to the gameplay. Whether you're looking to add some comedic flair to your roleplay or just want to see your character flop around, Bando-Ragdoll has you covered!

Features
Toggle Ragdoll Mode: Easily enable or disable ragdoll mode with a simple key press or command.

Natural Recovery: Players will naturally get back up after ragdoll mode is turned off, enhancing immersion.

Customizable Key Binding: Modify the key used to toggle ragdoll mode in the configuration file.

Lightweight Design: Optimized for performance, ensuring minimal impact on server resources.

Client-Side Implementation: Easy to integrate into your existing FiveM server setup.

Installation
Download the latest version of Bando-Ragdoll from your keymaster 

Extract the files into your resources folder.

Add 
ensure Bando-Ragdoll
 to your server configuration file.

Customize any settings in the 
config.lua
 file to fit your preferences.

Configuration
You can configure the ragdoll key by editing the config.lua file. By default, the U key (303) is used to toggle ragdoll mode.

Copy
Config = {}

-- The key used to activate ragdoll (default: U)
Config.RagdollKey = 303 -- U key (change this to any valid control key)
Customization
Ragdoll Key: You can change 
Config.RagdollKey
 to any control ID you prefer. The default is the U key (
303
). If you want to use a different key, consult the FiveM control list for the appropriate control ID.

Usage
Press the designated key (default: 
E
) to toggle ragdoll mode on and off.

Alternatively, use the command 
/ragdoll
 in the chat to achieve the same effect.

Contributing
Contributions are welcome! If you have ideas for enhancements or encounter any issues, please feel free to open an issue or submit a pull request.
