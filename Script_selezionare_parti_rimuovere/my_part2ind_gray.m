% parti unite secondo le regole del paper garcia ecc
% inidici sequenziali per tutti le classi

function pimap = my_part2ind_gray()
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
    pimap{1}(sprintf('engine_%d', ii)) = 5; % multiple engines
end
for ii = 1:10
    pimap{1}(sprintf('wheel_%d', ii)) = 6;  % multiple wheels
end

% [bicycle]
pimap{2}('fwheel')      = 7;                % front wheel
pimap{2}('bwheel')      = 7;                % back wheel
pimap{2}('saddle')      = 8;               
pimap{2}('handlebar')   = 9;                % handle bar
pimap{2}('chainwheel')  = 10;                % chain wheel
for ii = 1:10
    pimap{2}(sprintf('headlight_%d', ii)) = 11;
end

% [bird]
pimap{3}('head')        = 12;
pimap{3}('leye')        = 13;                % left eye
pimap{3}('reye')        = 13;                % right eye
pimap{3}('beak')        = 14;               
pimap{3}('torso')       = 15;            
pimap{3}('neck')        = 16;
pimap{3}('lwing')       = 17;                % left wing
pimap{3}('rwing')       = 17;                % right wing
pimap{3}('lleg')        = 18;                % left leg
pimap{3}('rleg')        = 18;                % right leg
pimap{3}('lfoot')       = 19;               % left foot
pimap{3}('rfoot')       = 19;               % right foot
pimap{3}('tail')        = 20;

% [boat]
% only has silhouette mask 

% [bottle]
pimap{5}('cap')         = 21;
pimap{5}('body')        = 22;

% [bus]
pimap{6}('frontside')   = 23;
pimap{6}('leftside')    = 23;
pimap{6}('rightside')   = 23;
pimap{6}('backside')    = 23;
pimap{6}('roofside')    = 24;
pimap{6}('leftmirror')  = 25;
pimap{6}('rightmirror') = 25;
pimap{6}('fliplate')    = 26;                % front license plate
pimap{6}('bliplate')    = 26;                % back license plate
for ii = 1:10
    pimap{6}(sprintf('door_%d',ii)) = 27 ;
end
for ii = 1:10
    pimap{6}(sprintf('wheel_%d',ii)) = 28;
end
for ii = 1:10
    pimap{6}(sprintf('headlight_%d',ii)) = 29;
end
for ii = 1:20
    pimap{6}(sprintf('window_%d',ii)) = 30;
end

% [car] % car has the same set of parts with bus
pimap{7}('frontside')   = 31;
pimap{7}('leftside')    = 31;
pimap{7}('rightside')   = 31;
pimap{7}('backside')    = 31;
pimap{7}('roofside')    = 32;
pimap{7}('leftmirror')  = 33;
pimap{7}('rightmirror') = 33;
pimap{7}('fliplate')    = 34;                % front license plate
pimap{7}('bliplate')    = 34;                % back license plate
for ii = 1:10
    pimap{7}(sprintf('door_%d',ii)) = 35 ;
end
for ii = 1:10
    pimap{7}(sprintf('wheel_%d',ii)) = 36;
end
for ii = 1:10
    pimap{7}(sprintf('headlight_%d',ii)) = 37;
end
for ii = 1:20
    pimap{7}(sprintf('window_%d',ii)) = 38;
end
% 
% 
% keySet = keys(pimap{6});
% valueSet = values(pimap{6});
% pimap{7} = containers.Map(keySet, valueSet);         

% [cat]
pimap{8}('head')        = 39;
pimap{8}('leye')        = 40;                % left eye
pimap{8}('reye')        = 40;                % right eye
pimap{8}('lear')        = 41;                % left ear
pimap{8}('rear')        = 41;                % right ear
pimap{8}('nose')        = 42;
pimap{8}('torso')       = 43;   
pimap{8}('neck')        = 44;
pimap{8}('lfleg')       = 45;                % left front leg
pimap{8}('lfpa')        = 46;               % left front paw
pimap{8}('rfleg')       = 45;               % right front leg
pimap{8}('rfpa')        = 46;               % right front paw
pimap{8}('lbleg')       = 45;               % left back leg
pimap{8}('lbpa')        = 46;               % left back paw
pimap{8}('rbleg')       = 45;               % right back leg
pimap{8}('rbpa')        = 46;               % right back paw
pimap{8}('tail')        = 47;               

% [chair]
% only has sihouette mask 

% [cow]
pimap{10}('head')       = 48;
pimap{10}('leye')       = 49;                % left eye
pimap{10}('reye')       = 49;                % right eye
pimap{10}('lear')       = 50;                % left ear
pimap{10}('rear')       = 50;                % right ear
pimap{10}('muzzle')     = 51;
pimap{10}('lhorn')      = 52;                % left horn
pimap{10}('rhorn')      = 52;                % right horn
pimap{10}('torso')      = 53;            
pimap{10}('neck')       = 54;
pimap{10}('lfuleg')     = 55;               % left front upper leg
pimap{10}('lflleg')     = 55;               % left front lower leg
pimap{10}('rfuleg')     = 55;               % right front upper leg
pimap{10}('rflleg')     = 55;               % right front lower leg
pimap{10}('lbuleg')     = 55;               % left back upper leg
pimap{10}('lblleg')     = 55;               % left back lower leg
pimap{10}('rbuleg')     = 55;               % right back upper leg
pimap{10}('rblleg')     = 55;               % right back lower leg
pimap{10}('tail')       = 56;               

% [diningtable]
% only has silhouette mask 

% [dog]

% keySet = keys(pimap{8});
% valueSet = values(pimap{8});
% pimap{12} = containers.Map(keySet, valueSet);         	% dog has the same set of parts with cat, 
%                                             		% except for the additional
%                                             		% muzzle

pimap{12}('head')        = 57;
pimap{12}('leye')        = 58;                % left eye
pimap{12}('reye')        = 58;                % right eye
pimap{12}('lear')        = 59;                % left ear
pimap{12}('rear')        = 59;                % right ear
pimap{12}('nose')        = 60;
pimap{12}('torso')       = 61;   
pimap{12}('neck')        = 62;
pimap{12}('lfleg')       = 63;                % left front leg
pimap{12}('lfpa')        = 64;               % left front paw
pimap{12}('rfleg')       = 63;               % right front leg
pimap{12}('rfpa')        = 64;               % right front paw
pimap{12}('lbleg')       = 63;               % left back leg
pimap{12}('lbpa')        = 64;               % left back paw
pimap{12}('rbleg')       = 63;               % right back leg
pimap{12}('rbpa')        = 64;               % right back paw
pimap{12}('tail')        = 65;     
pimap{12}('muzzle')      = 66;

% [horse]
% keySet = keys(pimap{10});
% valueSet = values(pimap{10});
% pimap{13} = containers.Map(keySet, valueSet);        	% horse has the same set of parts with cow, 
                                                        % except it has hoof instead of horn                                                        
pimap{13}('head')       = 67;
pimap{13}('leye')       = 68;                % left eye
pimap{13}('reye')       = 68;                % right eye
pimap{13}('lear')       = 69;                % left ear
pimap{13}('rear')       = 69;                % right ear
pimap{13}('muzzle')     = 70;
pimap{13}('torso')      = 71;            
pimap{13}('neck')       = 72;
pimap{13}('lfuleg')     = 73;               % left front upper leg
pimap{13}('lflleg')     = 73;               % left front lower leg
pimap{13}('rfuleg')     = 73;               % right front upper leg
pimap{13}('rflleg')     = 73;               % right front lower leg
pimap{13}('lbuleg')     = 73;               % left back upper leg
pimap{13}('lblleg')     = 73;               % left back lower leg
pimap{13}('rbuleg')     = 73;               % right back upper leg
pimap{13}('rblleg')     = 73;               % right back lower leg
pimap{13}('tail')       = 74;                                                                                                                   
pimap{13}('lfho')       = 75;
pimap{13}('rfho')       = 75;
pimap{13}('lbho')       = 75;
pimap{13}('rbho')       = 75;

% [motorbike]
pimap{14}('fwheel')     = 76;
pimap{14}('bwheel')     = 76;
pimap{14}('handlebar')  = 77;
pimap{14}('saddle')     = 78;
for ii = 1:10
    pimap{14}(sprintf('headlight_%d', ii)) = 79;
end

% [person]
pimap{15}('head')       = 80;
pimap{15}('leye')       = 81;                    % left eye
pimap{15}('reye')       = 81;                    % right eye
pimap{15}('lear')       = 82;                    % left ear
pimap{15}('rear')       = 82;                    % right ear
pimap{15}('lebrow')     = 83;                    % left eyebrow    
pimap{15}('rebrow')     = 83;                    % right eyebrow
pimap{15}('nose')       = 84;                    
pimap{15}('mouth')      = 85;                    
pimap{15}('hair')       = 86;                   
pimap{15}('torso')      = 87;                   
pimap{15}('neck')       = 88;           
pimap{15}('llarm')      = 89;                   % left lower arm
pimap{15}('luarm')      = 89;                   % left upper arm
pimap{15}('lhand')      = 90;                   % left hand
pimap{15}('rlarm')      = 89;                   % right lower arm
pimap{15}('ruarm')      = 89;                   % right upper arm
pimap{15}('rhand')      = 90;                   % right hand

pimap{15}('llleg')      = 91;               	% left lower leg
pimap{15}('luleg')      = 91;               	% left upper leg
pimap{15}('lfoot')      = 92;               	% left foot
pimap{15}('rlleg')      = 91;               	% right lower leg
pimap{15}('ruleg')      = 91;               	% right upper leg
pimap{15}('rfoot')      = 92;               	% right foot

% [pottedplant]
pimap{16}('pot')        = 93;
pimap{16}('plant')      = 94;

% [sheep]
% keySet = keys(pimap{10});
% valueSet = values(pimap{10});
% pimap{17} = containers.Map(keySet, valueSet);        % sheep has the same set of parts with cow
pimap{17}('head')       = 95;
pimap{17}('leye')       = 96;                % left eye
pimap{17}('reye')       = 96;                % right eye
pimap{17}('lear')       = 97;                % left ear
pimap{17}('rear')       = 97;                % right ear
pimap{17}('muzzle')     = 98;
pimap{17}('lhorn')      = 99;                % left horn
pimap{17}('rhorn')      = 99;                % right horn
pimap{17}('torso')      = 100;            
pimap{17}('neck')       = 101;
pimap{17}('lfuleg')     = 102;               % left front upper leg
pimap{17}('lflleg')     = 102;               % left front lower leg
pimap{17}('rfuleg')     = 102;               % right front upper leg
pimap{17}('rflleg')     = 102;               % right front lower leg
pimap{17}('lbuleg')     = 102;               % left back upper leg
pimap{17}('lblleg')     = 102;               % left back lower leg
pimap{17}('rbuleg')     = 102;               % right back upper leg
pimap{17}('rblleg')     = 102;               % right back lower leg
pimap{17}('tail')       = 103;


% [sofa]
% only has sihouette mask 

% [train]
pimap{19}('head')       = 104;
pimap{19}('hfrontside') = 105;                	% head front side                
pimap{19}('hleftside')  = 105;                	% head left side
pimap{19}('hrightside') = 105;                	% head right side
pimap{19}('hbackside')  = 105;                 	% head back side
pimap{19}('hroofside')  = 106;                	% head roof side

for ii = 1:10
    pimap{19}(sprintf('headlight_%d',ii)) = 107;
end

for ii = 1:10
    pimap{19}(sprintf('coach_%d',ii)) = 108;
end

for ii = 1:10
    pimap{19}(sprintf('cfrontside_%d', ii)) = 109;   % coach front side
end

for ii = 1:10
    pimap{19}(sprintf('cleftside_%d', ii)) = 109;   % coach left side
end

for ii = 1:10
    pimap{19}(sprintf('crightside_%d', ii)) = 109;  % coach right side
end

for ii = 1:10
    pimap{19}(sprintf('cbackside_%d', ii)) = 109;   % coach back side
end

for ii = 1:10
    pimap{19}(sprintf('croofside_%d', ii)) = 110;   % coach roof side
end


% [tvmonitor]
pimap{20}('screen')     = 111;