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

- 