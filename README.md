# Slackware

-- English --

Here I keep the slackware stuff. :)

In the pkgs directory, there is the Epson EcoTank L3210 printer driver. The slackbuild is in the slackbuild-various repository.

Since I am testing sway windows manager, I had to create a sway.sh file.
It can be used from a tty in init 3. 
This provides the line of code that is required to manage removable devices, such as pendrives.
Otherwise, it is only possible to manage it as root. 

Note: the user is in the plugdev, disk and necessary group, but wayland does not take them.

-- Español --

Aqui guardo lo de slackware. :)

En el directorio pkgs, esta el driver de la impresora Epson EcoTank L3210. El slackbuild, esta en el repositorio slackbuild-varios.

Dado que estoy probando sway windows manager, tuve que crear un archivo sway.sh.
Se puede usar desde una tty en init 3. 
Este provee la línea de codigo que se requiere, para poder gestionar los dispositivos extraibles, como pendrivers. Sino, solo es posible gestionarlo como root. 

Nota: el usuario esta en grupo plugdev, disk y los necesarios, pero wayland no los toma.
