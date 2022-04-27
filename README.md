# ShellScripts

# Disclaimer
_The Software Is Provided "As Is", Without Warranty Of Any Kind, Express Or Implied, Including But Not Limited To The Warranties Of Merchantability, Fitness For A Particular Purpose And Noninfringement. In No Event Shall The Authors Or Copyright Holders Be Liable For Any Claim, Damages Or Other Liability, Whether In An Action Of Contract, Tort Or Otherwise, Arising From, Out Of Or In Connection With The Software Or The Use Or Other Dealings In The Software._

# Table of contents
| Topic | Description | Link |
| --- | --- | --- |
| Topic 1 | Basic script | https://github.com/AmaranthineTech/ShellScripts#topic-1 |
| Topic 2 | Managing data | https://github.com/AmaranthineTech/ShellScripts#topic-2 |
| Topic 3 | Condition checks | https://github.com/AmaranthineTech/ShellScripts#topic-3 |
| Topic 4 | Documentation | https://github.com/AmaranthineTech/ShellScripts#topic-4 |

# Topic 1
https://arunpatwardhan.com/2021/06/10/shell-scripting-in-macos-part-1/

---
The folderCreator.zsh script is the script from the first blog article. 

You can download the script and make changes to it. 

## Running the script
#### Option 1:
```SHELL
zsh folderCreator.zsh
```

#### Option 2:
```SHELL
chmod ugo+x folderCreator.zsh
./folderCreator.zsh
```
This command assumes you are in the correct folder.

# Topic 2
https://arunpatwardhan.com/2021/07/02/shell-scripting-in-macos-part-2/

---
The folderCreator_v1-1.zsh script is the script from the second blog article. 

You can download the script and make changes to it. 

## Running the script
#### Option 1:
```SHELL
zsh folderCreator_v1-1.zsh <folder name 1> <folder name 2> <folder name 3>
```

Example:
```SHELL
zsh folderCreator_v1-1.zsh Tools Reports Help
```

#### Option 2:
```SHELL
chmod ugo+x folderCreator_v1-1.zsh
./folderCreator_v1-1.zsh <folder name 1> <folder name 2> <folder name 3>
```

Example:
```SHELL
./folderCreator_v1-1.zsh Tools Reports Help
```

This command assumes you are in the correct folder.

# Topic 3
https://arunpatwardhan.com/2021/07/16/shell-scripting-in-macos-part-3-condition-checks/

---
The folderCreator_v1-2.zsh script is the script from the second blog article. 

You can download the script and make changes to it. 

## Running the script
#### Option 1:
```SHELL
zsh folderCreator_v1-2.zsh <folder name 1> <folder name 2> <folder name 3>
```

Example:
```SHELL
zsh folderCreator_v1-2.zsh Tools Reports Help
```

# Topic 4


---
The folderCreator_v1-3.zsh script is the script from the third blog article. 

You can download the script and make changes to it. 

NOTE: _*Going forward the command will simply be referred to as folderCreator.zsh. Whenever, we mention this command we are talking about the version in context. So in this case, for topic 4, folderCreator.zsh simply refers to folderCreator_v1-3.zsh.*_

## Running the script
#### Option 1:
```SHELL
zsh folderCreator.zsh <folder name 1> <folder name 2> <folder name 3>
```

Example:
```SHELL
zsh folderCreator.zsh Tools Reports Help
```

#### Option 2:
```SHELL
chmod ugo+x folderCreator.zsh
./folderCreator.zsh <folder name 1> <folder name 2> <folder name 3>
```

Example:
```SHELL
./folderCreator.zsh Tools Reports Help
```
These commands assumes you are in the correct folder.

## Getting help
#### Option 1:
```SHELL
zsh folderCreator.zsh -h
```

#### Option 2:
```SHELL
./folderCreator.zsh -help
```

These commands assumes you are in the correct folder.

## Getting the version number
#### Option 1:
```SHELL
zsh folderCreator.zsh -v
```

#### Option 2:
```SHELL
./folderCreator.zsh -version
```

These commands assumes you are in the correct folder.
