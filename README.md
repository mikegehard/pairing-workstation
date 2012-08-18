This repository is used to hold the Chef recipes for provisioning a EC2 instance that
can act as a remote pairing station.

If you would like to pair remotely with me, please send me an email with the contents of 
your public key file.

Steps for pairing
1. Put visitor's public key in /home/visitor/.ssh/authorized_keys
2. Have visitor ssh into EC2 instance `ssh visitor@<instance public IP address>`
3. Have visitor run `wemux pair` after you have started a wemux session using `wemux`.
