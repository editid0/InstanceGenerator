# InstanceGenerator

## Installing
### Windows:
This is only designed for MacOS and any linux distros that support bash, which is most of them, including Ubuntu and Arch Linux

### MacOS
1. Open terminal
	- Press space + ⌘, then type `terminal`, and press enter, 
2. once it's open, type `git clone https://github.com/editid0/InstanceGenerator`
3. once it's finished downloading, use `cd InstanceGenerator`, and you can run the script

### Linux
(this is via ssh, if you're using a GUI, then open terminal and continue)
#### With git:
1. Run `git clone https://github.com/editid0/InstanceGenerator`
2. Then run `cd InstanceGenerator`, and you can run the script

#### Without git:
If you are able to install git, do it with the following command:

#### Debian based OS
`sudo apt install git -y`

#### RPM based OS, including Fedora, CentOS and RHEL
`sudo dnf install git-all`

Once installed, then run as if you have [git](#with-git)



## Usage

`InstanceGenerator.sh <number if instances> <file> <name> [start command (defaults to python3.8)]`

### Examples:

#### Python file:
`InstanceGenerator.sh 3 main.py Web_Server python3`
(This runs main.py 3 times, running as `python3 main.py <instance number -1>`, and creating 3 screen instances)
The invokes look like:

- `python3 main.py 0`
- `python3 main.py 1`
- `python3 main.py 2`


#### NodeJS
`InstanceGenerator.sh 3 index.js Web_Server node`
(This runs index.js 3 times, running as `node index.js <instance number -1>`, and creating 3 screen instances)
The invokes look like:

- `node index.js 0`
- `node index.js 1`
- `node index.js 2`


#### Swift
`InstanceGenerator.sh 3 main.swift Hello_World swift`
(This runs main.swift 3 times, running as `swift main.swift <instance number -1>`, and creating 3 screen instances)
The invokes look like:

- `swift main.swift 0`
- `swift main.swift 1`
- `swift main.swift 2`
