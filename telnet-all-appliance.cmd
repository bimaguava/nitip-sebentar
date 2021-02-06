# cmd /k "%ConEmuDir%\..\init.bat" runAT -new_console:d:"%USERPROFILE%":t:tab2
# cmd /k "%ConEmuDir%\..\init.bat" runAT -new_console:d:"%USERPROFILE%":n:
# Reading: https://conemu.github.io/en/NewConsole.html

telnet -new_console:t:ESC_Internet 192.168.137.123 32791 & telnet -new_console:t:ESC_pfSense 192.168.137.123 32785 & telnet -new_console:t:ESC_Router 192.168.137.123 32784
telnet -new_console:t:EIN_WANemu 192.168.137.123 32773 & telnet -new_console:t:EIN_pfSense 192.168.137.123 32792
