function pimap = my_part2ind_gray_103_4_255()
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

pimap{1}('tail')        = 255;                
for ii = 1:10
    pimap{1}(sprintf('engine_%d', ii)) = 4; % multiple engines
end
for ii = 1:10
    pimap{1}(sprintf('wheel_%d', ii)) = 5;  % multiple wheels
end

% [bicycle]
pimap{2}('fwheel')      = 6;                % front wheel
pimap{2}('bwheel')      = 6;                % back wheel

pimap{2}('saddle')      = 7;               
pimap{2}('handlebar')   = 8;                % handle bar
pimap{2}('chainwheel')  = 9;                % chain wheel
for ii = 1:10
    pimap{2}(sprintf('headlight_%d', ii)) = 255;
end

% [bird]
pimap{3}('head')        = 10;

pimap{3}('leye')        = 255;                % left eye
pimap{3}('reye')        = 255;                % right eye

pimap{3}('beak')        = 11;               
pimap{3}('torso')       = 12;            
pimap{3}('neck')        = 13;

pimap{3}('lwing')       = 14;                % left wing
pimap{3}('rwing')       = 14;                % right wing

pimap{3}('lleg')        = 15;                % left leg
pimap{3}('rleg')        = 15;                % right leg

pimap{3}('lfoot')       = 16;               % left foot
pimap{3}('rfoot')       = 16;               % right foot

pimap{3}('tail')        = 17;

% [boat]
% only has silhouette mask  part id 18

% [bottle]
pimap{5}('cap')         = 19;
pimap{5}('body')        = 20;

% [bus]
pimap{6}('frontside')   = 21;
pimap{6}('leftside')    = 21;
pimap{6}('rightside')   = 21;
pimap{6}('backside')    = 21;

pimap{6}('roofside')    = 22;

pimap{6}('leftmirror')  = 23;
pimap{6}('rightmirror') = 23;

pimap{6}('fliplate')    = 24;                % front license plate
pimap{6}('bliplate')    = 24;                % back license plate
for ii = 1:10
    pimap{6}(sprintf('door_%d',ii)) = 25 ;
end
for ii = 1:10
    pimap{6}(sprintf('wheel_%d',ii)) = 26;
end
for ii = 1:10
    pimap{6}(sprintf('headlight_%d',ii)) = 27;
end
for ii = 1:20
    pimap{6}(sprintf('window_%d',ii)) = 28;
end

% [car] % car has the same set of parts with bus
pimap{7}('frontside')   = 29;
pimap{7}('leftside')    = 29;
pimap{7}('rightside')   = 29;
pimap{7}('backside')    = 29;

pimap{7}('roofside')    = 30;

pimap{7}('leftmirror')  = 255;
pimap{7}('rightmirror') = 255;

pimap{7}('fliplate')    = 31;                % front license plate
pimap{7}('bliplate')    = 31;                % back license plate
for ii = 1:10
    pimap{7}(sprintf('door_%d',ii)) = 32 ;
end
for ii = 1:10
    pimap{7}(sprintf('wheel_%d',ii)) = 33;
end
for ii = 1:10
    pimap{7}(sprintf('headlight_%d',ii)) = 34;
end
for ii = 1:20
    pimap{7}(sprintf('window_%d',ii)) = 35;
end
% 
% 
% keySet = keys(pimap{6});
% valueSet = values(pimap{6});
% pimap{7} = containers.Map(keySet, valueSet);         

% [cat]
pimap{8}('head')        = 36;

pimap{8}('leye')        = 37;                % left eye
pimap{8}('reye')        = 37;                % right eye

pimap{8}('lear')        = 38;                % left ear
pimap{8}('rear')        = 38;                % right ear

pimap{8}('nose')        = 39;
pimap{8}('torso')       = 40;   
pimap{8}('neck')        = 41;

pimap{8}('lfleg')       = 42;               % left front leg
pimap{8}('rfleg')       = 42;               % right front leg
pimap{8}('rbleg')       = 42;               % right back leg
pimap{8}('lbleg')       = 42;               % left back leg

pimap{8}('lfpa')        = 43;               % left front paw
pimap{8}('rfpa')        = 43;               % right front paw
pimap{8}('lbpa')        = 43;               % left back paw
pimap{8}('rbpa')        = 43;               % right back paw

pimap{8}('tail')        = 44;               

% [chair]
% only has sihouette mask part id 45

% [cow]
pimap{10}('head')       = 46;

pimap{10}('leye')       = 255;                % left eye
pimap{10}('reye')       = 255;                % right eye

pimap{10}('lear')       = 47;                % left ear
pimap{10}('rear')       = 47;                % right ear

pimap{10}('muzzle')     = 48;

pimap{10}('lhorn')      = 49;                % left horn
pimap{10}('rhorn')      = 49;                % right horn

pimap{10}('torso')      = 50;            
pimap{10}('neck')       = 51;

pimap{10}('lfuleg')     = 52;               % left front upper leg
pimap{10}('lflleg')     = 52;               % left front lower leg
pimap{10}('rfuleg')     = 52;               % right front upper leg
pimap{10}('rflleg')     = 52;               % right front lower leg
pimap{10}('lbuleg')     = 52;               % left back upper leg
pimap{10}('lblleg')     = 52;               % left back lower leg
pimap{10}('rbuleg')     = 52;               % right back upper leg
pimap{10}('rblleg')     = 52;               % right back lower leg

pimap{10}('tail')       = 53;               

% [diningtable]
% only has silhouette mask id part 54

% [dog]

% keySet = keys(pimap{8});
% valueSet = values(pimap{8});
% pimap{12} = containers.Map(keySet, valueSet);         	% dog has the same set of parts with cat, 
%                                             		% except for the additional
%                                             		% muzzle

pimap{12}('head')        = 55;

pimap{12}('leye')        = 56;                % left eye
pimap{12}('reye')        = 56;                % right eye

pimap{12}('lear')        = 57;                % left ear
pimap{12}('rear')        = 57;                % right ear

pimap{12}('nose')        = 58;
pimap{12}('torso')       = 59;   
pimap{12}('neck')        = 60;

pimap{12}('lfleg')       = 61;               % left front leg
pimap{12}('lbleg')       = 61;               % left back leg
pimap{12}('rbleg')       = 61;               % right back leg
pimap{12}('rfleg')       = 61;               % right front leg

pimap{12}('lfpa')        = 62;               % left front paw
pimap{12}('rfpa')        = 62;               % right front paw
pimap{12}('lbpa')        = 62;               % left back paw
pimap{12}('rbpa')        = 62;               % right back paw

pimap{12}('tail')        = 63;     
pimap{12}('muzzle')      = 64;

% [horse]
% keySet = keys(pimap{10});
% valueSet = values(pimap{10});
% pimap{13} = containers.Map(keySet, valueSet);        	% horse has the same set of parts with cow, 
                                                        % except it has hoof instead of horn                                                        
pimap{13}('head')       = 65;

pimap{13}('leye')       = 255;                % left eye
pimap{13}('reye')       = 255;                % right eye

pimap{13}('lear')       = 66;                % left ear
pimap{13}('rear')       = 66;                % right ear

pimap{13}('muzzle')     = 67;
pimap{13}('torso')      = 68;            
pimap{13}('neck')       = 69;

pimap{13}('lfuleg')     = 70;               % left front upper leg
pimap{13}('lflleg')     = 70;               % left front lower leg
pimap{13}('rfuleg')     = 70;               % right front upper leg
pimap{13}('rflleg')     = 70;               % right front lower leg
pimap{13}('lbuleg')     = 70;               % left back upper leg
pimap{13}('lblleg')     = 70;               % left back lower leg
pimap{13}('rbuleg')     = 70;               % right back upper leg
pimap{13}('rblleg')     = 70;               % right back lower leg

pimap{13}('tail')       = 71; 

pimap{13}('lfho')       = 72;
pimap{13}('rfho')       = 72;
pimap{13}('lbho')       = 72;
pimap{13}('rbho')       = 72;

% [motorbike]
pimap{14}('fwheel')     = 73;
pimap{14}('bwheel')     = 73;

pimap{14}('handlebar')  = 74;
pimap{14}('saddle')     = 75;
for ii = 1:10
    pimap{14}(sprintf('headlight_%d', ii)) = 76;
end

% [person]
pimap{15}('head')       = 77;

pimap{15}('leye')       = 78;                    % left eye
pimap{15}('reye')       = 78;                    % right eye

pimap{15}('lear')       = 79;                    % left ear
pimap{15}('rear')       = 79;                    % right ear

pimap{15}('lebrow')     = 255;                    % left eyebrow    
pimap{15}('rebrow')     = 255;                    % right eyebrow

pimap{15}('nose')       = 80;                    
pimap{15}('mouth')      = 81;                    
pimap{15}('hair')       = 82;  
pimap{15}('torso')      = 83;                   
pimap{15}('neck')       = 84;           

pimap{15}('llarm')      = 85;                   % left lower arm
pimap{15}('luarm')      = 85;                   % left upper arm
pimap{15}('rlarm')      = 85;                   % right lower arm
pimap{15}('ruarm')      = 85;                   % right upper arm

pimap{15}('lhand')      = 86;                   % left hand
pimap{15}('rhand')      = 86;                   % right hand

pimap{15}('llleg')      = 87;               	% left lower leg
pimap{15}('luleg')      = 87;               	% left upper leg
pimap{15}('rlleg')      = 87;               	% right lower leg
pimap{15}('ruleg')      = 87;               	% right upper leg

pimap{15}('lfoot')      = 88;               	% left foot
pimap{15}('rfoot')      = 88;               	% right foot

% [pottedplant]
pimap{16}('pot')        = 89;
pimap{16}('plant')      = 90;

% [sheep]
% keySet = keys(pimap{10});
% valueSet = values(pimap{10});
% pimap{17} = containers.Map(keySet, valueSet);        % sheep has the same set of parts with cow
pimap{17}('head')       = 91;

pimap{17}('leye')       = 255;                % left eye
pimap{17}('reye')       = 255;                % right eye

pimap{17}('lear')       = 92;                % left ear
pimap{17}('rear')       = 92;                % right ear

pimap{17}('muzzle')     = 93;

pimap{17}('lhorn')      = 94;                % left horn
pimap{17}('rhorn')      = 94;                % right horn

pimap{17}('torso')      = 95;            
pimap{17}('neck')       = 96;

pimap{17}('lfuleg')     = 97;               % left front upper leg
pimap{17}('lflleg')     = 97;               % left front lower leg
pimap{17}('rfuleg')     = 97;               % right front upper leg
pimap{17}('rflleg')     = 97;               % right front lower leg
pimap{17}('lbuleg')     = 97;               % left back upper leg
pimap{17}('lblleg')     = 97;               % left back lower leg
pimap{17}('rbuleg')     = 97;               % right back upper leg
pimap{17}('rblleg')     = 97;               % right back lower leg

pimap{17}('tail')       = 98;


% [sofa]
% only has sihouette mask part id 99

% [train]
pimap{19}('head')       = 100;

pimap{19}('hfrontside') = 101;                	% head front side                
pimap{19}('hleftside')  = 101;                	% head left side
pimap{19}('hrightside') = 101;                	% head right side
pimap{19}('hbackside')  = 101;                 	% head back side

pimap{19}('hroofside')  = 102;                	% head roof side

for ii = 1:10
    pimap{19}(sprintf('headlight_%d',ii)) = 103;
end

for ii = 1:10
    pimap{19}(sprintf('coach_%d',ii)) = 104;
end

for ii = 1:10
    pimap{19}(sprintf('cfrontside_%d', ii)) = 105;   % coach front side
end

for ii = 1:10
    pimap{19}(sprintf('cleftside_%d', ii)) = 105;   % coach left side
end

for ii = 1:10
    pimap{19}(sprintf('crightside_%d', ii)) = 105;  % coach right side
end

for ii = 1:10
    pimap{19}(sprintf('cbackside_%d', ii)) = 105;   % coach back side
end

for ii = 1:10
    pimap{19}(sprintf('croofside_%d', ii)) = 106;   % coach roof side
end


% [tvmonitor]
pimap{20}('screen')     = 107;