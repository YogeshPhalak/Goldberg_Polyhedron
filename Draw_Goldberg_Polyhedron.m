function Draw_Goldberg_Polyhedron(n)

% % Syntax;
% % 
% % Void = Draw_Goldberg_Polyhedron(n);
% % 
% % ***********************************************************
% % 
% % Description
% % 
% % program creates Goldbergs Polyhedron (Geodesic Sphere of Hex and 
% % Pentagons) of given order n. 
% % The radius of the sphere is.   
% % n denotes the density of the grid.  
% % note: keep n>=2 to output intended shape.  
% % 
% % ***********************************************************
% % 
% % Input Variables
% %
% % n is the number to control the faces of the Goldbergs polyhedra.  
% %         no. of faces = ceil(20*sqrt(3)).
% % 
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
% n=2; 
% Draw_Goldberg_Polyhedron(n) % order 2 Goldberg Polyhedron.
% 
% % ***********************************************************
% % 
% % List of Sub Programs
% % 
% % getProjectedFace
% % hexagon
% % barycentricCords
% % scalProd
% % slerp
% % mapGidpoint2Sogere
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

% Generating  triangles (point indices) of an icosahedron:

x=-0.5;
y=0;

i=0:4;

icoTriangs   = [zeros(5,1),(i+1)',(mod(i+1,5)+1)';
               6*ones(5,1),(i+7)',(mod(i+1,5)+7)';
               (i+1)',(mod(i+1,5)+1)',(mod(7-i,5)+7)';
               (i+1)',(mod(7-i,5)+7)',(mod(8-i,5)+7)'];
icoTriangs   = icoTriangs+1;


% Generated Hexagonal grid section on Equilateral triangle. 

scale = 1/(n*3^0.5);
for i=0:n
    for j=0:n-i
       if(i==0)
          type = 2;
          th = -2*pi/3;
       elseif(j==n-i)
           
          type = 2;
          th = 2*pi/3;
       
       elseif(j==0 && i~=0)
           
          type = 2;
          th   = 0;
          
       else
           type = 1;
           th = 0;
       end
       
       if((i~=0||j~=0)&&(i~=0||j~=n)&&(i~=n||j~=0))
          hex = hexagon(x+i*1/n+j*1/(2*n),y+j*(3^0.5)/(2*n),th,scale,type);
          
          for k=1:20
              a = icoTriangs(k,1);
              b = icoTriangs(k,2);
              c = icoTriangs(k,3);
              getProjectedFace(hex,a,b,c);
          end
       end
       
    end
end

end


