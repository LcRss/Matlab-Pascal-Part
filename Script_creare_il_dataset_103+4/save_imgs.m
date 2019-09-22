path_annotations = 'Y:\tesisti\rossi\datasets_iniziale\PASCAL2010_part\trainval\Annotations_Part/';
path_images = 'Y:\tesisti\rossi\datasets_iniziale\PASCALVOC2010\VOCdevkit\VOC2010\JPEGImages/';
images = dir([path_annotations, '/', '*.mat']);

% examples_path = '/home/luca/Documenti/Tesi/datasets/PASCALVOC2010/VOCdevkit/VOC2010/JPEGImages';
% examples_imgs = dir([examples_path, '/', '*.jpg']);

% cmap = VOClabelcolormap();
pimap = my_part2ind_gray_103_4_255();     % part index mapping

for ii = 1:numel(images)
    
%     disp(ii);
      
    imname = images(ii).name;
    imname = imname(1:end-4);
    disp(imname);
%     imname = strcat(imname,'.jpg');
    
    img = imread([path_images, '/', imname, '.jpg']);
    % load annotation -- anno
    an = load([path_annotations, imname,'.mat']);
    
    [part_mask] = mat2map(an.anno, img, pimap);
    
    % display annotation
    imwrite(part_mask,['D:\Rossi\data_check_dataset/', imname, '.png']);


end