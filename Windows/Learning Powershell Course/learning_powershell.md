# Learning PowerShell: LinkedIn Learning

## PowerShell Overview

### Why PowerShell?

#### What Is PowerShell?

- Object-oriented
- Rich script environment
- Bulk operations
- Interactive shell
- Task automation

#### PowerShell Basics

- Consistent and repeatable tasks
- Work with built-in providers
- Talk to Active Directory, registry, and WMI, natively
- Bridge the gap between previous languages with aliases

##### Built into many products

- Microsoft IT products
- VMware
- Citrix
- Many more

#### How to Read PowerShell

##### Power of the Pipe

- Output from one command becomes input for the next
- Strings multiple commands together
- Parameter binding is the key
- `|` routes information to the correct parameters with very little effort
- Example: `get-service | out-file c:\services.txt`
  - Output from `get-service` is piped to Out-File, which will create a list of services in a text file called `services.txt`

#### Getting Help

- `get-help`
- Auto complete by using the tab key

#### Discovering Cmdlets and Aliases
