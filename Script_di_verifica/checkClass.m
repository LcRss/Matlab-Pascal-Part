% dato un dataset controlla se mancano alcune classi all'interno

path_res='G:\Data_correct\segmentation_part_gray\new_dataset_107\data_part_107part_val/';
fileID = fopen('C:\Users\lucab\Desktop\Script_Matlab_ordinati\File_txt_lista_immagini_per_dataset_e_statistiche_dal_sito/val.txt');
img_gt_list = textscan(fileID,'%s');
test_list = img_gt_list{1,1};
fclose(fileID);

all_part = []
diningtable = 0;

for i = 1: length(test_list)
        
%         disp(test_list{i,1});
        e = [path_res,num2str(test_list{i,1})];
        GT = imread([path_res,num2str(test_list{i,1})]); % GT image
        part = unique(GT);
        
        if ismember(54,part)
            diningtable = diningtable+ 1;
        end
        
        all_part = cat(1,all_part, part);
        all_part = unique(all_part);
end

disp(size(all_part));

for i = 1: 107
        
        if not( ismember(i,all_part))
           disp(i);
        end
        
end