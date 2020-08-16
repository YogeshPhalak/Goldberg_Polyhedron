function [l1,l2,l3] = barycentricCords(p)
% % Syntax;
% % 
% % [l1,l2,l3] = barycentricCords(p);
% % 
% % ***********************************************************
% % 
% % Description
% % 
% % program outputs the barycentric co-ordsinates for triangle 
% % (-0.5,0),(0.5,0),(0,sqrt(3)/2).  
% % 
% % ***********************************************************
% % 
% % Input Variables
% %
% % 'p'is are the position vector of the form [x,y,1]'. 
% %          
% % ***********************************************************
% % 
% % Output Variables
% % 
% % l1,l2,l3 are the barycentric co-ordsinates.
% %  
% % ***********************************************************
% % 
% Example
% 
% [l1,l2,l3] = barycentricCords([1,2,1]')
% 
% l1 =
% 
%    -1.6547
% 
% 
% l2 =
% 
%     0.3453
% 
% 
% l3 =
% 
%     2.3094 
% % ***********************************************************
% % List of Sub Programs
% % 
% 
% % ***********************************************************
% % 
% % This program was written by Yogesh G. Phalak 
% % 
% %     date     May 2020  
% % 
% % 
% % ***********************************************************
% % 
% % Feel free to modify this code.
% % 

x = p(1); y = p(2);

l3 = y*2/3^0.5;
l2 = x+0.5*(1-l3);
l1 = 1-l2-l3; 
end