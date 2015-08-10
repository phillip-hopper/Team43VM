## Instructions for installing and running the Team43 Development Environment

This is a basic Xubuntu 14.04 virtual machine (VM) that has been pre-configured to allow a developer to quickly get started being productive developing for Door43.

### Requirements:
* BIOS: Virtualization must be enable in your computer's BIOS (see your manufacturers documentation)
* OS: Windows, Mac OSX, or Linux
* Vagrant: (http://www.vagrantup.com/downloads.html)
* VirtualBox 4.3: last I heard version 5.0 will not work with Vagrant (https://www.virtualbox.org/wiki/Download_Old_Builds)

### Quick-Start:

After you successfully complete these instructions, you will be able to launch the Team43 VM from the Oracle VM VirtualBox Manager, just like any other VM.

* Install the Requirements listed above
* Clone this repository to your computer
* Open a terminal/command window and `cd` to the repository directory
* Windows: run `vagrant.bat`
* Linux, Mac OSX: run `vagrant up`

The VM itself is not in this repository. It's a 2GB download that Vagrant will retrieve during the initialization process.

The Door43 repository has already been cloned to /var/www/projects/Door43. To run the door43.org website locally browse to [http://door43.localhost](http://door43.localhost) inside the VM.

### Usage
* Clone this repo
* At a command-line in the directory for this repo, use the vagrant command to start, halt, shutdown, or destroy
* Examples:
  * list: `vagrant status`
  * start: `vagrant up <name>`
  * halt: `vagrant halt <name>`
  * shutdown: `vagrant shutdown <name>`
  * delete: `vagrant destroy -f <name>`

### Configuration
* username=team43, password=password
* password-less sudo

These additional packages have been installed:
* Apache 2
* AptanaStudio 3
* Geany
* Gedit
* Gimp 2.8
* Netbeans 8.0.2
* Oracle JDK 1.8.0_51
* PHP 5.5
* Ruby 1.9.1 + rails
* SmartGit
* Synaptic
* VirtualBox Geust Additions 4.3.30
