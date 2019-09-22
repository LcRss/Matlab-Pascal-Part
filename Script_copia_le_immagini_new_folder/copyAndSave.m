% data una cartella con tutti le immagini (train test val) selezione da un
% txt le immadini di uno dei set e le copia in un altra cartella

path_list = 'D:\Rossi\Matlab\Script_to_exclude_parts\txt_utili/test.txt';

path_old_folder = 'D:\Rossi\data_add_table/';
path_new_folder = 'D:\Rossi\data_part_107part_test/';

% path_old_class = '/home/luca/code_tesi/dataset_instance_class_part/class_png/';
% path_new_class = '/home/luca/code_tesi/dataset_test/class_png/';
% 
% path_old_instance = '/home/luca/code_tesi/dataset_instance_class_part/instance_png/';
% path_new_instance = '/home/luca/code_tesi/dataset_test/instance_png/';
% 
% path_old_part = '/home/luca/code_tesi/dataset_instance_class_part/part_png/';
% path_new_part = '/home/luca/code_tesi/dataset_test/part_png/';

fileID = fopen(path_list);
img_gt_list = textscan(fileID,'%s');
img_gt_list = img_gt_list{1,1};
fclose(fileID);

parfor ii = 1:numel(img_gt_list)
    
    disp(ii);
    img_name = img_gt_list{ii,1};
    
    copyfile([path_old_folder,img_name],[path_new_folder,img_name]);
%     copyfile([path_old_class,img_name],[path_new_class,img_name]);
%     copyfile([path_old_instance,img_name],[path_new_instance,img_name]);
%     copyfile([path_old_part,img_name],[path_new_part,img_name]);
    % load annotation -- anno
    

end