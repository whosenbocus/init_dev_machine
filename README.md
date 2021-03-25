# init_dev_machine
Execute this script to initialize a new development machine.

> $Script = Invoke-RestMethod https://raw.githubusercontent.com/whosenbocus/init_dev_machine/master/InitializeDevMachine.ps1; 
> Invoke-Expression $($Script)

Review the content of this script before you run it.

### Winget has to be present on the machine prior to this being executed.
#### This is a work in progress. Missing key features
- Automatic installation of Winget (if not present)
- Validation
