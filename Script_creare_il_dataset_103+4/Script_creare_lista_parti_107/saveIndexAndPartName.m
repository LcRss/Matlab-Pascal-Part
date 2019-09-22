pimap = my_part2ind_gray_103_4_255();     % part index mapping
a = pimap{1};
b = a.keys;
c = a.values;
% listName = cell(107,1);
listName = ["",""];
class = {"aeroplane_", "bicycle_","birds_","boat_",  "bottle_", "bus_","car_", "cat_", "chair_", "cow_", "diningtable_","dog_","horse_", "motorbike_", "person_", "pottedplant_", "sheep_", "sofa_", "train_" ,"tvmonitor_" };

for i = 1:numel(pimap)
    
    ks = pimap{i}.keys;
    vs = pimap{i}.values;
    
    for j = 1: numel(ks)
        if vs{j}~=255
%             listName{vs{j}}= strcat(class{i}, ks{j});
            listName(vs{j})= strcat(class{i}, ks{j});
        end
    end
end
listName(18)="boat";
listName(45)="chair";
listName(54)="diningtable";
listName(99)="sofa";

string = "";

for j = 1:numel(listName)
   tmp = strcat(listName(j),"'");
   tmp2 = strcat("'",tmp);
   tmp3 = strcat(tmp2,",");
   string = strcat(string,tmp3);
end

disp(string)
