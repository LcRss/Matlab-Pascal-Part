name_parts = load("listNamePartsNoUnderScore.mat");
name_parts = name_parts.listName;

for i = 1: 107
    name = replace( name_parts(i), "_", "-" );
    name_parts(i) = name;
    disp(name);
end

list_name = name_parts;

