# openvpn files should be located at /etc/openvpn

# NordVPN Set up openVPN on Linux

# Password Hash Generator
##############################
# 1. Enter username
# 2. Enter password
# 3. Hash username
# 3. Hash password
# 4. Output resulting hash as file

# NordVPN Random VPN Server
##############################
# 0. Have password in seperate file, hashed using the username as a key
# 0. Check if there are saved settings.  

# 1. Prompt username. Check if there are saved settings for the username hash. If there are, ask if user would like to use them.


# 2. Prompt for a) password, or b) hash file containing password
# 2.a. Pass password directly to openvpn
# 2.b. Convert hash file into password using username as key, then pass result to openvpn

# 3. Prompt if user wants to use TCP or UDP. Include descrption: UDP: Faster results, less reliable. Good for games. TCP: Normal results, reliable. Good for regular use. 

# 4. Prompt if user wants a) random VPN within a country, or b) random VPN in the world

# 4.a.1. Show list of available countries
# 4.a.1.a. grep first two characters in specified TCP or UDP folder, show the list to user
# 4.a.1.b. Prompt user to select country abbreviation. If it doesn't match anything in the list, raise error, reprompt for country abbr.
# 4.b.1.a. Select random server

# $-1. Prompt if user wants to save these settings. This will replace existing preferences for the current username.
# $. Execute openvpn
