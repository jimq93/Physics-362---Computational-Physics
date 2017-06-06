
%James Quach
%Bala Sundaram
%Physics-362
%12/16/2015
%Julia Set
maximum_number_of_iterations = 1000;
gridSize = 2000;
xlim = [-1.5, -0.748766707771770];
ylim = [ 0.123640844894862,  0.123640851045270];
x = linspace( xlim(1).285, xlim(2), gridSize );
y = linspace( ylim(1), ylim(2), gridSize );
t = tic();
[xGrid,yGrid] = meshgrid( x, y );
z0 = xGrid + 1i*yGrid;
counter = ones( size(z0) );

% Calculation
z = z0;
for n = 0:maximum_number_of_iterations
    z = z.*z + z0;
    inside = abs( z )<=2;
    counter = counter + inside;
end
counter = log( counter );

% Reader/Display
cpuTime = toc( t );
fig = gcf;
fig.Position = [750 750 1200 1200];
imagesc( x, y, counter );
axis image
colormap( [jet();flipud( jet() );0 0 0] );
title( sprintf( '%1.2fsecs (CPU bound)', cpuTime ) );