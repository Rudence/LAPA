% Rudi Hidvary 
% 101037816

close all
clear
clc

nx = 12;
ny = 12;
iteration = 100;

V = zeros(ny,nx);
V(:,1) = 1;
V(:,end) = 0;



for a = 1:iteration
    figure(1)
    surf(V)
    [Ex Ey]=gradient(V)
    figure(2)
    quiver(Ex,Ey)
   
    for i = 1:ny
        for j = 2:nx-1
            if(i == 1)
                V(i,j) = (1/4)*((2*V(i+1,j))+V(i,j-1)+V(i,j+1))
            elseif(i == ny)
                V(i,j) = (1/4)*((2*V(i-1,j))+V(i,j-1)+V(i,j+1))
            else
                V(i,j) = (1/4)*(V(i-1,j)+V(i+1,j)+V(i,j-1)+V(i,j+1))
            end
        end
    end
    [Ex Ey]=gradient(V)
    quiver(Ex,Ey)
end



clc

V = zeros(ny,nx);
V(:,1) = 1;
V(:,end) = 1;
V(1,:) = 0;
V(end,:) = 0;


for a = 1:iteration
    figure(3)
    surf(V)
    [Ex Ey]=gradient(V)
    figure(4)
    quiver(Ex,Ey)
    
    for i = 2:ny-1
        for j = 2:nx-1
            if(i == 1)
                V(i,j) = (1/4)*((2*V(i+1,j))+V(i,j-1)+V(i,j+1))
            elseif(i == ny)
                V(i,j) = (1/4)*((2*V(i-1,j))+V(i,j-1)+V(i,j+1))
            else
                V(i,j) = (1/4)*(V(i-1,j)+V(i+1,j)+V(i,j-1)+V(i,j+1))
            end
        end
    end
end



