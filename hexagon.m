function hex = hexagon(x,y,th,scale,type)

% % Syntax;
% % 
% % hex = hexagon(x,y,th,scale,type);
% % 
% % ***********************************************************
% % 
% % Description
% % 
% % this program creates the hexagon of given configuration and size. 
% % 
% % ***********************************************************
% % 
% % Input Variables
% %
% % x and y are the rectangular co-ordinates of the center of the hexagon
% % th is the rotation angle measured anticlockwise positive from positive
% % x axis
% % type veriable decides the type of hexagon as follows:
% % % type = 1 full hexagon.
% % % type = 2 half hexagon. 
% % % type = 3 1/6 th hexagon.
% % ***********************************************************
% % 
% % Output
% % 
% % 3D plot of the Goldberg polyhedral shape.
% %  
% % ***********************************************************
% % 
% Example
% 
% hex = hexagon(0,0,pi/6,0.5,1)
% 
% hex =
% 
%    -0.2500    0.2500    0.5000    0.2500   -0.2500   -0.5000   -0.2500
%     0.4330    0.4330    0.0000   -0.4330   -0.4330    0.0000    0.4330
% 
% % ***********************************************************
% % 
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


% rotation matrx with scale

rot_mat = scale*[cos(th), -sin(th);
          sin(th), cos(th)];

if type == 1
 
    hex(1,:)= sin((0:6)*2*pi/6);
    hex(2,:)= cos((0:6)*2*pi/6);

    
elseif type == 2
 

    hex(1,:)= [3^0.5/2,3^0.5/2,0,-3^0.5/2,-3^0.5/2];
    hex(2,:)= [0,0.5,1,0.5,0];
        
end

 hex = rot_mat*hex;
 
 hex(1,:)= x+hex(1,:); 
 hex(2,:)= y+hex(2,:);

end
