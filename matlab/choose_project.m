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

    case 'frame'  % ====================================================== FRAME
      cd(projectPath)
      projectPath = [homePath, '/Documents/GitHub/frame_wp5'];
      addpath('./code')
      addpath(genpath('./code/lib'))

    otherwise  % ===================================================== (unknown)
      error('Unknown project ''%s'': bad input or new project?', projectName)

  end
  
  if nargout >= 1
    varargout{1} = projectPath;
  end

end