function face = getProjectedFace(hex,u,v,w)

% % Syntax;
% % 
% % face = getProjectedFace(hex,u,v,w);
% % 
% % ***********************************************************
% % 
% % Description
% % 
% % program outputs the co-ordinates of projected face on the plane 
% % defined by tips of the vectors u,v and w on the unit radius sphere.  
% % 
% % ***********************************************************
% % 
% % Input Variables
% %
% % 'hex' is the co-ordinate array of the planer verticies of the closed 
% % shape to be projected in the form [x,y,z,1]'.
% % 'u','v' and 'w' are the vectors defining plane to be projected on 
% % the sphere. 
% %          
% % ***********************************************************
% % 
% % Output Variables
% % 
% % face is the coordinate array of the projected face on the unit sphere.
% %  
% % ***********************************************************
% % 
% Example
% 
% face = getProjectedFace(hex,u,v,w).
% % 
% % ***********************************************************
% % List of Sub Programs
% % 
% % mapGidpoint2Sogere
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


% Generating the corners (coordinates) of an icosahedron:

s = 2/5^0.5; c = 1/5^0.5;
i=0:4;
topPoints    = [0,0,1;
                s*cos(i*2*pi/5)',s*sin(i*2*pi/5)',c*ones(5,1)];
bottomPoints = [-topPoints(:,1),topPoints(:,2),-topPoints(:,3)];         

icoPoints    = [topPoints;bottomPoints];

n=length(hex);
face = zeros(3,n);

% projecting the input hexagonal mesh on the sphere
for i=1:n
    face(:,i) = mapGidpoint2Sogere(hex(:,i),icoPoints(u,:)...
        ,icoPoints(v,:),icoPoints(w,:));
end

% creating random colors
clr = join([num2str(rand),',',num2str(rand),',',num2str(rand),',']);

% plotting the results
patch('XData',face(1,:),'YData',face(2,:),'ZData',face(3,:),'FaceColor'...
    ,clr,'EdgeColor','none','FaceAlpha',0.3);

plot3(face(1,:),face(2,:),face(3,:),'-','LineWidth',2,'Color',...
   '0,0,0','MarkerSize',4,'MarkerEdgeColor','1,0,0',...
   'MarkerFaceColor','1,0,0');
    
    axis equal; 
    hold on;

end