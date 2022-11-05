# Helpful Commands

## Licensing

These commands will register Windows without going through prompts.

* `slmgr /ipk SERIAL-CODE`
* `slmgr /ato SERIAL-CODE`

## Domain

This command shows a list of domain controllers where the current user resides.

`NETDOM QUERY /D:yourdomain DC`

## BitLocker

Checks the status of BitLocker on the current machine

`manage-bde -status`
