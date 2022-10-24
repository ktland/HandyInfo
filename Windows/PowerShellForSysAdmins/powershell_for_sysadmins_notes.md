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

- 