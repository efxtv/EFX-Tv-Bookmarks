## stop all the process for user
`$ killall -STOP -u kali`
`$ killall -KILL -u kali`

## Disable linux user account 
`$ sudo usermod -L -e 30 kali`

## Enable user
`$ usermod -e -1 -U kali`

	
    `-L` : Lock the local user account specified by {user}.
    `-e 1` : The date on which the user account will be disable. The value 1 sets date to “Jan 02, 1970.” In other words, user can not go back in time and login again.
    `{user}` : The Linux username you wish to lock down.
