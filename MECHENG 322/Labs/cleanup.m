% delete all build files (*.rxw64 files and *_rtwin_win64 folders)
% tested with R2015b 64-bit
% K. Stol

files = dir('*.rxw64');

for i=1:length(files)
    delete(files(i).name);
    [pathstr, name] = fileparts(files(i).name);
    rmdir([name,'_sldrt_win64'],'s');
end

rmdir('slprj','s');

% delete Simulink cache files
delete *.slxc

clear files i pathstr name