[![View Check whether directory is on current MATLAB path on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/45944-check-whether-directory-is-on-current-matlab-path)

[![Donate to Rody](https://i.stack.imgur.com/bneea.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4M7RMVNMKAXXQ&source=url)

# FEX-isonpath

ISONPATH checks if given directory is on the current MATLAB path. Vectorized in the sense that it accepts cell-arrays of strings.
y = ISONPATH(dirs) for string [dirs] checks whether the specified directory is on the MATLAB search path. The output [y] is a logical scalar equal to 'true' when the directory is on the path, 'false' otherwise.

In case [dirs] is a cell array of strings, the same check is performed for each entry in [dirs]. In this case, the output [y] is a logical array the same size as [dirs].

Note that a case-INsensitive comparison is used on windows platforms, while exact case match is required for Linux/Mac platforms.

If you like this work, please consider [a donation](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4M7RMVNMKAXXQ&source=url). 
