clc; clear;

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Calcola la percentuale di pixel per ogni classe, nell'intero dataset  %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

path_annotations = 'G:\Luca\backup_documenti_linux\Tesi\datasets\PASCAL2010_part\trainval\Annotations_Part/';
path_images = 'G:\Luca\backup_documenti_linux\Tesi\datasets\PASCALVOC2010\VOCdevkit\VOC2010\JPEGImages/';
images = dir([path_annotations, '/', '*.mat']);

grayMap = my_part2ind_gray_103_4_255();     % part index mapping

for i = 0:108
    
    partStat(i+1).id = (i);
    partStat(i+1).numPixel = 0.0;
    partStat(i+1).perClss = 0.0;
    
end

for ii = 1:numel(images)
    disp(ii);
    imname = images(ii).name;
    imname = imname(1:end-4);
    disp(imname);  
    img = imread([path_images, '/', imname, '.jpg']);
    % load annotation -- anno
    an = load([path_annotations, imname,'.mat']);
    [partStat] = cntPx(an.anno, img, grayMap, partStat);

end

pxTot = 0 ;
for ii = 1:108
    pxTot = pxTot + partStat(ii).numPixel;
end

for ii = 1:108
   partStat(ii).perClss = ( 100* partStat(ii).numPixel ) / pxTot;
end

disp("end");




