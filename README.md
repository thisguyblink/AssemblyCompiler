# AssemblyCompiler
A bash CLI to compile and link a x86 assembly file with the option to run ddd debugger

## Requirements
Bash
yasm

## Runbook 
./compileASM.sh [target file] [ddd option]
### Example

./compileASM.sh project.asm y

The assembly file is project.asm

This will compile and link the project file and open ddd debugger

### Troubleshooting
If it doesn't run then run 'chmod 744 compileASM.sh' in the terminal
