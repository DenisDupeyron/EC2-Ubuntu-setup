Automatically setup your Ubuntu EC2 machine
===========================================


What is this?
-------------

This repo will let you automatically setup a transient Ubuntu-based EC2 machine.

Current features:

- Unattended installation of miniconda

- Bash and Vim status bars and git status with powerline

- Simple but useful Bash and Vim defaults

- Optional pre-configured multi-pane tmux session


How to install it?
------------------

Log onto your EC2 machine installed using the Ubuntu template, and do:

```
git clone https://github.com/DenisDupeyron/EC2-Ubuntu-setup.git
cd EC2-Ubuntu-setup
./setup.sh
exit
```

Then log in again.

To launch the pre-configured tmux session just type `tm`.
