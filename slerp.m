function out = slerp(p0,p1,t)

% % Syntax;
% % 
% % out = slerp(p0,p1,t)
% % 
% % ***********************************************************
% % 
% % Description
% % 
% % program outputs the uniform interpolation of arc defined by p0, p1    
% % (around origin).  
% % 
% % ***********************************************************
% % 
% % Input Variables
% %
% % t=0 -> p0, t=1 -> p1. 
% %          
% % ***********************************************************
% % 
% % Output Variables
% % 
% % out = interpolated c-ordinates. 
% %  
% % ***********************************************************
% % 
% Example
% 
%  out = slerp([1,0,0]',[0,1,0]',1)
% 
% out =
% 
%      0
%      1
%      0
% 
% % ***********************************************************
% % List of Sub Programs
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

ang0Cos=scalProd(p0,p1)/scalProd(p0,p0);
ang0Sin=(1-ang0Cos*ang0Cos)^0.5;
ang0 = atan2(ang0Sin,ang0Cos);

l0 = sin((1-t)*ang0);
l1 = sin(t*ang0);

out = (l0*p0+l1*p1)/ang0Sin;

end    