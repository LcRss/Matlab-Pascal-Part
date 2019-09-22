% parti unite secondo le regole del paper garcia ecc 
% indici delle parti indipendenti dalle parti delle altre classi
% parti di classi diverse con lo stesso indice

function pimap = my_part2ind_color()
% Define the part index of each objects. 
% One can merge different parts by using the same index for the
% parts that are desired to be merged. 
% For example, one can merge 
% the left lower leg (llleg) and the left upper leg (luleg) of person by setting: 
% pimap{15}('llleg')      = 19;               % left lower leg
% pimap{15}('luleg')      = 19;               % left upper leg

pimap = cell(20, 1);                    
% Will define part index map for the 20 PASCAL VOC object classes in ascending
% alphabetical order (the standard PASCAL VOC order). 
for ii = 1:20
    pimap{ii} = containers.Map('KeyType','char','ValueType','int32');
end

% [aeroplane]
pimap{1}('body')        = 1;                
pimap{1}('stern')       = 2;                                      
pimap{1}('lwing')       = 3;                % left wing
pimap{1}('rwing')       = 3;                % right wing
pimap{1}('tail')        = 4;                
for ii = 1:10
    pimap{1}(sprintf('engine_%d', ii)) = 10; % multiple engines
end
for ii = 1:10
    pimap{1}(sprintf('wheel_%d', ii)) = 20;  % multiple wheels
end

% [bicycle]
pimap{2}('fwheel')      = 1;                % front wheel
pimap{2}('bwheel')      = 1;                % back wheel
pimap{2}('saddle')      = 2;               
pimap{2}('handlebar')   = 3;                % handle bar
pimap{2}('chainwheel')  = 4;                % chain wheel
for ii = 1:10
    pimap{2}(sprintf('headlight_%d', ii)) = 10;
end

% [bird]
pimap{3}('head')        = 1;
pimap{3}('leye')        = 2;                % left eye
pimap{3}('reye')        = 2;                % right eye
pimap{3}('beak')        = 3;               
pimap{3}('torso')       = 4;            
pimap{3}('neck')        = 5;
pimap{3}('lwing')       = 6;                % left wing
pimap{3}('rwing')       = 6;                % right wing
pimap{3}('lleg')        = 7;                % left leg
pimap{3}('lfoot')       = 8;               % left foot
pimap{3}('rleg')        = 7;               % right leg
pimap{3}('rfoot')       = 8;               % right foot
pimap{3}('tail')        = 9;

% [boat]
% only has silhouette mask 

% [bottle]
pimap{5}('cap')         = 1;
pimap{5}('body')        = 2;

% [bus]
pimap{6}('frontside')   = 1;
pimap{6}('leftside')    = 2;
pimap{6}('rightside')   = 2;
pimap{6}('backside')    = 3;
pimap{6}('roofside')    = 4;
pimap{6}('leftmirror')  = 5;
pimap{6}('rightmirror') = 5;
pimap{6}('fliplate')    = 6;                % front license plate
pimap{6}('bliplate')    = 6;                % back license plate
for ii = 1:10
    pimap{6}(sprintf('door_%d',ii)) = 10 ;
end
for ii = 1:10
    pimap{6}(sprintf('wheel_%d',ii)) = 20;
end
for ii = 1:10
    pimap{6}(sprintf('headlight_%d',ii)) = 30;
end
for ii = 1:20
    pimap{6}(sprintf('window_%d',ii)) = 40;
end

% [car]
keySet = keys(pimap{6});
valueSet = values(pimap{6});
pimap{7} = containers.Map(keySet, valueSet);         % car has the same set of parts with bus

% [cat]
pimap{8}('head')        = 1;
pimap{8}('leye')        = 2;                % left eye
pimap{8}('reye')        = 2;                % right eye
pimap{8}('lear')        = 3;                % left ear
pimap{8}('rear')        = 3;                % right ear
pimap{8}('nose')        = 4;
pimap{8}('torso')       = 5;   
pimap{8}('neck')        = 6;
pimap{8}('lfleg')       = 7;                % left front leg
pimap{8}('lfpa')        = 8;               % left front paw
pimap{8}('rfleg')       = 7;               % right front leg
pimap{8}('rfpa')        = 8;               % right front paw
pimap{8}('lbleg')       = 9;               % left back leg
pimap{8}('lbpa')        = 10;               % left back paw
pimap{8}('rbleg')       = 9;               % right back leg
pimap{8}('rbpa')        = 10;               % right back paw
pimap{8}('tail')        = 11;               

% [chair]
% only has sihouette mask 

% [cow]
pimap{10}('head')       = 1;
pimap{10}('leye')       = 2;                % left eye
pimap{10}('reye')       = 2;                % right eye
pimap{10}('lear')       = 3;                % left ear
pimap{10}('rear')       = 3;                % right ear
pimap{10}('muzzle')     = 4;
pimap{10}('lhorn')      = 5;                % left horn
pimap{10}('rhorn')      = 5;                % right horn
pimap{10}('torso')      = 6;            
pimap{10}('neck')       = 7;
pimap{10}('lfuleg')     = 8;               % left front upper leg
pimap{10}('lflleg')     = 9;               % left front lower leg
pimap{10}('rfuleg')     = 8;               % right front upper leg
pimap{10}('rflleg')     = 9;               % right front lower leg
pimap{10}('lbuleg')     = 10;               % left back upper leg
pimap{10}('lblleg')     = 11;               % left back lower leg
pimap{10}('rbuleg')     = 10;               % right back upper leg
pimap{10}('rblleg')     = 11;               % right back lower leg
pimap{10}('tail')       = 12;               

% [diningtable]
% only has silhouette mask 

% [dog]
keySet = keys(pimap{8});
valueSet = values(pimap{8});
pimap{12} = containers.Map(keySet, valueSet);         	% dog has the same set of parts with cat, 
                                            		% except for the additional
                                            		% muzzle
pimap{12}('muzzle')     = 20;

% [horse]
keySet = keys(pimap{10});
valueSet = values(pimap{10});
pimap{13} = containers.Map(keySet, valueSet);        	% horse has the same set of parts with cow, 
                                                        % except it has hoof instead of horn
remove(pimap{13}, {'lhorn', 'rhorn'});
pimap{13}('lfho') = 30;
pimap{13}('rfho') = 30;
pimap{13}('lbho') = 31;
pimap{13}('rbho') = 31;

% [motorbike]
pimap{14}('fwheel')     = 1;
pimap{14}('bwheel')     = 1;
pimap{14}('handlebar')  = 2;
pimap{14}('saddle')     = 3;
for ii = 1:10
    pimap{14}(sprintf('headlight_%d', ii)) = 10;
end

% [person]
pimap{15}('head')       = 1;
pimap{15}('leye')       = 2;                    % left eye
pimap{15}('reye')       = 2;                    % right eye
pimap{15}('lear')       = 3;                    % left ear
pimap{15}('rear')       = 3;                    % right ear
pimap{15}('lebrow')     = 4;                    % left eyebrow    
pimap{15}('rebrow')     = 4;                    % right eyebrow
pimap{15}('nose')       = 7;                    
pimap{15}('mouth')      = 8;                    
pimap{15}('hair')       = 9;                   

pimap{15}('torso')      = 10;                   
pimap{15}('neck')       = 11;           
pimap{15}('llarm')      = 12;                   % left lower arm
pimap{15}('luarm')      = 13;                   % left upper arm
pimap{15}('lhand')      = 14;                   % left hand
pimap{15}('rlarm')      = 12;                   % right lower arm
pimap{15}('ruarm')      = 13;                   % right upper arm
pimap{15}('rhand')      = 14;                   % right hand

pimap{15}('llleg')      = 15;               	% left lower leg
pimap{15}('luleg')      = 16;               	% left upper leg
pimap{15}('lfoot')      = 17;               	% left foot
pimap{15}('rlleg')      = 15;               	% right lower leg
pimap{15}('ruleg')      = 16;               	% right upper leg
pimap{15}('rfoot')      = 17;               	% right foot

% [pottedplant]
pimap{16}('pot')        = 1;
pimap{16}('plant')      = 2;

% [sheep]
keySet = keys(pimap{10});
valueSet = values(pimap{10});
pimap{17} = containers.Map(keySet, valueSet);        % sheep has the same set of parts with cow

% [sofa]
% only has sihouette mask 

% [train]
pimap{19}('head')       = 1;
pimap{19}('hfrontside') = 2;                	% head front side                
pimap{19}('hleftside')  = 3;                	% head left side
pimap{19}('hrightside') = 3;                	% head right side
pimap{19}('hbackside')  = 4;                 	% head back side
pimap{19}('hroofside')  = 5;                	% head roof side

for ii = 1:10
    pimap{19}(sprintf('headlight_%d',ii)) = 10;
end

for ii = 1:10
    pimap{19}(sprintf('coach_%d',ii)) = 20;
end

for ii = 1:10
    pimap{19}(sprintf('cfrontside_%d', ii)) = 30;   % coach front side
end

for ii = 1:10
    pimap{19}(sprintf('cleftside_%d', ii)) = 40;   % coach left side
end

for ii = 1:10
    pimap{19}(sprintf('crightside_%d', ii)) = 40;  % coach right side
end

for ii = 1:10
    pimap{19}(sprintf('cbackside_%d', ii)) = 30;   % coach back side
end

for ii = 1:10
    pimap{19}(sprintf('croofside_%d', ii)) = 70;   % coach roof side
end


% [tvmonitor]
pimap{20}('screen')     = 1;