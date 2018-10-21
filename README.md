# My Configuration Files

Will include my own configuration files for the following programs & co.:
* Ubuntu post-install script
* Windows post-install script
* Linux file templates to be typically put in `~/Templates/`
* Matlab configuration (cross-platform)
* VS Code user settings and extension install script

## Notes on executing scripts

A responsibility waiver is in the [License file](./LICENSE).
You run the scripts at your own risk.
If you run my code and your machine explodes and you point the finger at me, I will laugh at you.
Read the code before executing, unless you **blindly** trust the source (you shouldn't anyway).
What I publish here should work (works for me, at least), but you have the reponsibility of checking before executing.

Pull Requests are welcome!


### Windows PowerShell

The code in the `windows` folder should be compatible with PowerShell 2.0, which is the default on Windows 7.
Documentation about this fact is on [a SuperUser Q/A](https://superuser.com/a/362156).

The file fetches a bunch of executable files from the Internet that I trust (should you?) and places them in the Downloads folder of the local machine.
To be able to run the (unsigned) script, you should start a PowerShell with administrator privileges and run `Set-ExecutionPolicy RemoteSigned`.
Confirm the action at the resulting prompt _only if you understand the consequences_.
Before you do this, read the state of `ExecutionPolicy` with `Get-ExecutionPolicy`.
After execution, you should run again `Set-ExecutionPolicy` to restore the previous settings.

### Ubuntu

The script [`run_this_1.sh`](./ubuntu/run_this_1.sh) is **not** to be trusted.
Currently, it might not work and I don't know if I'll ever fix it.
At the time of writing (October 2018), my skills with Bash are so limited that I do not even have a clear understanding of what I wrote.
