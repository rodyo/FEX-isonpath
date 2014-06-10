function yn = isonpath(dirs)
% ISONPATH     Checks if given directory ison the current MATLAB path.
%              Accepts cell-arrays of strings.
% 
% y = ISONPATH(dirs) for string [dirs] checks whether the specified 
% directory is on the MATLAB search path. The output [y] is a logical 
% scalar equal to 'true' when the directory is on the path, 'false'
% otherwise. 
% 
% In case [dirs] is a cell array of strings, the same check is 
% performed for each entry in [dirs]. In this case, the output [y] is 
% a logical array the same size as [dirs]. 
%
% See also path, pathtool, exist.
    
    
% Please report bugs and inquiries to: 
%
% Name       : Rody P.S. Oldenhuis
% E-mail     : oldenhuis@gmail.com    (personal)
%              oldenhuis@luxspace.lu  (professional)
% Affiliation: LuxSpace sàrl
% Licence    : GPL + anything implied by placing it on the FEX


% Changelog
%{
2014/March/19 (Rody Oldenhuis)
- NEW: first version
%}


% If you find this work useful and want to show your appreciation:
% https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6G3S5UYM7HJ3N


    %% Initialize
    
    % Quick exit
    if nargin==0 || isempty(dirs)
        yn = []; return; end
    
    % Checks & conversions
    if ~iscell(dirs)
        dirs = {dirs}; end
    if ~iscellstr(dirs)
        throwAsCaller(MException(...
            'ispathdir:type_error',...
            'ISONPATH expects a string or a cell array of strings.'));
    end
    
    %% Do the work
        
    P  = regexp(path, ';', 'split');
    yn = false(size(dirs));
    for ii = 1:numel(dirs)        
        if ispc % Windows is NOT case sensitive
            yn(ii) = ~isempty(dirs{ii}) && any(strcmpi(P,dirs{ii}));         
        else % *nix IS case sensitive
            yn(ii) = ~isempty(dirs{ii}) && any(strcmp (P,dirs{ii})); 
        end
    end
    
end
