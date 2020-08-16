function out = scalProd(p1,p2)
% % Syntax;
% % 
% % out = scalProd(p1,p2)
% % 
% % ***********************************************************
% % 
% % Description
% % 
% % program outputs scalar producto of the input vectors p1 and p2.  
% % 
% % ***********************************************************
% % 
% % Input Variables
% %
% % p1 and p2 are the vetors of form [x,y,z,1]'.
% %          
% % ***********************************************************
% % 
% % Output Variables
% % 
% % out is the scalar producto of p1 and p2.
% %  
% % ***********************************************************
% % 
% Example
% 
% out = scalProd([1,2,3,1]',[0.1,0.2,0.5,1]')
% 
% out =
% 
%      3
% % 
% % ***********************************************************
% % List of Sub Programs
% %  
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
out = sum(p1.*p2);
end