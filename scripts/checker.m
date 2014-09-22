%% Add external tools


addpath( genpath( './extern' ) );

%% Generate a Checkboard
% Create data and append metadata

data = struct('name','Checkerboard', ...
              'numcheck', 8)

A = round(checkerboard( data.('numcheck' ) ));
             
data.('matlab') = struct( 'code', ...
    'round(checkerboard( data.(''numcheck'' ) ) )' ); 

data.('size') = size( A );


savejson( '', data, './_data/checker.json')

%% Title Checkerboard Image

pcolor(A);
shading flat
colormap gray
xlabel('pixels')
ylabel('pixels')
title('Normal Checkerboard')
figure(gcf)
saveas( gcf, fullfile( '.','images','checkerfull.png' ) )

% Uploaded Images to https://www.flickr.com/photos/tonyfast/15299711616/

data.('thumbnail') = 'https://www.flickr.com/photos/tonyfast/15299711616/'