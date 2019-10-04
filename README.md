# My Configuration Files

Will include my own configuration files for the following programs & co.:
- [KDE Neon](https://neon.kde.org/) post-install script
- Windows post-install script
- Linux file templates to be typically put in `~/Templates/`
- Matlab configuration (cross-platform)
- VS Code user settings and extension install script


## Notes on executing scripts

A responsibility waiver is in the [License file](./LICENSE).
You run the scripts at your own risk.
If you run my code and your machine explodes and you point the finger at me, I will laugh at you.
Read the code before executing, unless you blindly trust the source (you shouldn't anyway).
What I publish here should work (works for me, at least), but you have the reponsibility of _understanding_ before executing.

Pull Requests are welcome!


### Windows PowerShell

The code in the `windows` folder should be compatible with PowerShell 2.0, which is the default on Windows 7.
Documentation about this fact is on [a SuperUser Q/A](https://superuser.com/a/362156).

The file fetches a bunch of executable files from the Internet that I trust (should you?) and places them in the Downloads folder of the local machine.
To be able to run the (unsigned) script, you should start a PowerShell with administrator privileges and run `Set-ExecutionPolicy RemoteSigned`.
Confirm the action at the resulting prompt _only if you understand the consequences_.
Before you do this, read the state of `ExecutionPolicy` with `Get-ExecutionPolicy`.
After execution, you should run again `Set-ExecutionPolicy` to restore the previous settings.


## Credits

Thanks to [@eddelbuettel](https://github.com/eddelbuettel) for [his script](https://github.com/eddelbuettel/mkl4deb/blob/master/script.sh) to install Intel's MKL on deb-based systems.
My version differs from his just for the update to the specific MKL version I want to download.

The file [`matlab.ico`](./matlab/matlab.ico) is property of [The Mathworks Inc](https://www.mathworks.com/).
