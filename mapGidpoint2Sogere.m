function out = mapGidpoint2Sogere(p,s1,s2,s3)
% % Syntax;
% % 
% % out = mapGidpoint2Sogere(p,s1,s2,s3)
% % 
% % ***********************************************************
% % 
% % Description
% % 
% % program outputs the co-ordinate array of the projection of the input
% % co-ordinates on the unit sphere.   
% % 
% % ***********************************************************
% % 
% % Input Variables
% %
% % 'p' is the co-ordinate array of the planer verticies of the closed 
% % shape to be projected in the form [x,y,z,1]'.
% % 's1','s2' and 's3' are the vectors defining plane of the co-ordinates 
% % to be projected. 
% %          
% % ***********************************************************
% % 
% % Output Variables
% % 
% % out is the coordinate array of the projected face on the unit sphere.
% %  
% % ***********************************************************
% % 
% Example
% 
% out = mapGidpoint2Sogere([0,0.5,0.5],[1,0,0]',[0,1,0]',[0,0,1]')
% 
% out =
% 
%     0.4357
%     0.4357
%     0.7876
%  
% % ***********************************************************
% % List of Sub Programs
% % 
%  barycentricCords
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


[l1,l2,l3] = barycentricCords(p);

if abs(l3-1)<10^-10
    out = s3;

else
    l2s = l2/(l1+l2);
    p12 = slerp(s1,s2,l2s);
    out = slerp(p12,s3,l3);
end
end
