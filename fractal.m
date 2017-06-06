maximum_number_of_iterations = 500;
gridSize = 2000;
xlim = [-0.748766713922161, -0.748766707771757];
ylim = [ 0.123640844894862,  0.123640851045266];

t = tic();
x = linspace( xlim(1), xlim(2), gridSize );
y = linspace( ylim(1), ylim(2), gridSize );
[xGrid,yGrid] = meshgrid( x, y );
z0 = xGrid + 1i*yGrid;
counter = ones( size(z0) );

% Calculate
z = z0;
for n = 0:maximum_number_of_iterations
    z = z.*z + z0;
    inside = abs( z )<=2;
    counter = counter + inside;
end
counter = log( counter );

% Show
cpuTime = toc( t );
fig = gcf;
fig.Position = [150 150 300 300];
imagesc( x, y, counter );
axis image
colormap( [jet();flipud( jet() );0 0 0] );
title( sprintf( '%1.2fsecs (CPU bound)', cpuTime ) );