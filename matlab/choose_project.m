function varargout = choose_project(projectName)
  % Sets the working directory and adds folders to session path depending on
  % what project is chosen every time.
  %
  %
  % PARAMETERS
  % ----------
  % projectName : str
  %               A string with the name of the project. If the project is not
  %               recognized, an exception is raised and nothing will be
  %               executed. In such case, maybe you want to add the case to
  %               this function.
  %
  %
  % RETURNS
  % -------
  % projectPath : str
  %               A string returning the root folder of the project.
  %

  if ~ ischar(projectName)
    error('''projectName is expected to be a string.')
  end
  
  homePath = 'C:/Users/Andrea';
  
  switch projectName

    case 'frame'  % ===================================================== FRAME
      projectPath = [homePath, '/Documents/GitHub/frame_wp5'];
      cd( projectPath )
      addpath('./code')
      addpath(genpath('./code/lib'))
      
    case 'ta-macro4'  % ================================== TA MacroEconomics IV
      whichone = input('Which TA session are you working on? (1..6) >> ', 's');
      projectPath = [homePath, '/Mega/Teaching/40213-macro4/aa1819/'];
      if strcmp( whichone, '0' )
        cd( projectPath )
      else
        sessionPath = ['ta', whichone, '/matlab/'];
        cd( [ projectPath, sessionPath ] )
      end

    otherwise  % ==================================================== (unknown)
      error('Unknown project ''%s'': bad input or new project?', projectName)

  end
  
  if nargout >= 1
    varargout{1} = projectPath;
  end

end
