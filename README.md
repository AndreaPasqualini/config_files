# Configuration Files


## Brief details on my setup

I like Linux and work best in it.
However, I use Windows because it just does not mess with laptops and because I'm in an environment where Microsoft 365 reigns supreme.

My workflow is the following: LaTeX, R, Python and smaller command-line utilities (e.g., git) are in WSL.
Matlab and Stata are in Windows proper.
To access my WSL files, I use Visual Studio Code with the [Remote - WSL extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl).


## Notes on executing scripts

A responsibility waiver is in the [License file](./LICENSE).
You run the scripts at your own risk.
If you run my code and your machine explodes and you point the finger at me, I will laugh at you.
Read the code before executing, unless you blindly trust the source (you shouldn't anyway).
What I publish here should work (works for me, at least), but you have the reponsibility of _understanding_ before executing.

Pull Requests are welcome!


## Credits

Thanks to [@eddelbuettel](https://github.com/eddelbuettel) for [his script](https://github.com/eddelbuettel/mkl4deb/blob/master/script.sh) to install Intel's MKL on deb-based systems.
My version differs from his just for the update to the specific MKL version I want to download.

The file [`matlab.ico`](./matlab/matlab.ico) is property of [The Mathworks Inc](https://www.mathworks.com/).
