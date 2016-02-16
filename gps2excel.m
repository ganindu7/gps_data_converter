% This is a quick workaround, keep in mind that matalab has its own GPS
% toolbox which makes life easy.
%
% Instructions: 
%                      change your .gpx fileneme to the variabe name fileneme or
%                      edit the name of your file to this name. and run
%
% Further developmenmt: 
%                      this code can be improved to automatically read files and
%                      do all the file handling by itself. let me know if
%                      improvements are needed.
% 
% Contact/feedback: ganindu@gmail.com 
% 10-Dec-15


clear;clc

filename = gpxread('gps-data-1.gpx');

gpsdata = zeros(length(filename),3);
gpsdata(:,1) = filename(:,1).Latitude;
gpsdata(:,2) = filename(:,1).Longitude;

time_x = filename.Time(:);

fileID = fopen('gps_data.csv','w');



for i = 1:length(filename)
    
    time_element = time_x(i);
    time_string = char(time_element);
    
    fprintf(fileID,'%f, %f, %s\n', gpsdata(i,1), gpsdata(i,2), time_string);
    
end

fclose(fileID);

%% This is just to test git

%% This is again to test git 