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
* Windows: run `vagrant-up.bat`
* Linux, Mac OSX: run `vagrant up --no-provision`

The VM itself is not in this repository. It's a 2GB download that Vagrant will retrieve during the initialization process.

The Door43 repository has already been cloned to /var/www/projects/Door43. To run the door43.org website locally browse to [http://door43.localhost](http://door43.localhost) inside the VM.

### Provisioning
If you intend to use pandoc or tex, you will need to provision the VM using these instructions. The provisioning process will probably take well over one hour even if you have a fast internet connection. During this process haskell, pandoc, texlive, and the Google Noto fonts will be installed.

* Shut down the VM.
* Open a terminal/command window and `cd` to the repository directory
* Windows: run `vagrant-provision.bat`
* Linux, Mac OSX: run `vagrant up --provision`

### Usage
* Clone this repo
* At a command-line in the directory for this repo, use the vagrant command to start, halt, shutdown, or destroy
* Examples:
  * list: `vagrant status`
  * start: `vagrant up <name>`
  * halt: `vagrant halt <name>`
  * shutdown: `vagrant shutdown <name>`
  * delete: `vagrant destroy -f <name>`
  * provision: `vagrant up --provision`

### Updating
When a new version of the virtual machine is available, you can update to the new version using the following steps. **WARNING:** this process will delete your old VM and replace it with the new one. All files that you added or changed will be lost, so make a backup.
* Commit all changes in your repositories and push the changes to Github.
* Shut down the VM.
* Open a command prompt in the directory containing this repository.
* Enter `vagrant box update`. This will download the newest version of the VM.
* Enter `vagrant up`. This will configure the update and start the new VM.

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
