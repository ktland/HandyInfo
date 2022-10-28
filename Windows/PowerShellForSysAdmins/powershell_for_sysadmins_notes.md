# PowerShell for Sysadmins Notes

## Part 1: Fundamentals

### Chapter 1: Getting Started

#### PowerShell refers to two things

1. A command line shell, installed by default on all recent versions of Windows (starting with 7) and most recently available on Linux and macOS via PowerShell Core
2. Scripting language

#### Exploring PowerShell Commands

- PowerShell has *commands*, the generic term for named executable expressions
- `Get-Command` displays a list of every command PowerShell is aware of by default
- Most commands follow a *Verb*-*Noun* scheme
- PowerShell command flavors:
  - *cmdlets*
    - Most built-in commands from Microsoft
    - Typically written in other languages such as C#
  - functions
    - commands written in PowerShell
  - aliases
  - external scripts
- Commands have *parameters* which are values that are passed to a command to customize its behavior

#### Getting Help

- Similar to the `man` command in Linux, PowerShell has the `help` command and the `Get-Help` cmdlet
- Example: `Get-Help Add-Content`
- The `Examples` parameter is very useful
  - `Get-Help CommandName -Examples`

### Chapter 2: Basic PowerShell Concepts

#### Variables

- A *variable* is a place to store *values*
- You can think of a variable as a digital box

##### Displaying and Changing a Variable

- All variables in PowerShell start with a dollar sign `$`
- Indicates to PowerShell that you're calling a variable and not a cmdlet
- Variables in PowerShell come in two broad classes:
  - *user-defined variables*
  - *automatic variables*

##### User-Defined Variables

- A variable that you *declare* and *initialize* (or *assign*)
- `$color = 'blue'`
- The value of a variable won't change unless something, or someone, explicitly changes it
- `Get-Variable` command will list all the variables currently in memory

##### Automatic Variables

- Premade variables that PowerShell itself uses
- Should be treated as *read-only*

###### $null Variable

- It represents nothing
- Assigning `$null` to a variable allows you to create that variable but not assign a real value to it

###### $LASTEXITCODE Variable

- When external applications finish running, they finish with an *exit code*, or *return code*
- Typically, a 0 indicates success and anything else means either failure or another anomaly
- `$LASTEXITCODE` displays the exit code of the last application command

###### Preference Variables

- *Preference variables* control the default behavior of various output streams:
  - `Error`
  - `Verbose`
  - `Debug`
  - `Information`
- A list of all the preference variables can be found by running `Get-Variable` and filtering for all variables ending in *Preference*
- Example: `Get-Variable -Name *Preference`
- These variables can be used to configure the various types of output PowerShell can return

#### Data Types

- PowerShell variables come in a variety of forms, or *types*
- Several data types:
  - bools
  - strings
  - integers
- A variable's data type can be changed without errors

##### Boolean Values

- True or false value (1 or 0)
- Used to represent binary conditions, like a light switch being on or off
- PowerShell booleans are called *bools*
- The two boolean values are represented by the automatic variables `$true` and `$false`
  - These automatic variables are hard-coded into PowerShell and cannot be changed

##### Integers and Floating Points

Numbers can be represented in PowerShell in two main ways:
1. integer
2. floating-point 

###### Integer Types

- *Integer* data types hold only whole numbers and will round any decimal input to the nearest integer
- Integer data types come in:
  - *Signed* data types
    - Can store both positive and negative numbers
  - *Unsigned* data types
    - Values with no sign
- By default, PowerShell stores integers by using the 32-bit signed `Int32` type
  - 
- The bit count determines how big (or small) a number the variable can hold
- 