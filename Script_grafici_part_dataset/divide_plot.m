clc;
clear all;

stat = load("stat_percentuale_senza_background.mat");
stat_perc = stat.partStat;
stat_perc = stat_perc(1:108);

vector_perc = [];
for i = 2: 108
    vector_perc(i-1) = stat_perc(i).perClss;
end

v_1 = vector_perc(1:53);
v_2 = vector_perc(54:107);


name_parts = load("listNamePartsNoUnderScore.mat");
name_parts = name_parts.name_parts;
name_parts_1 = name_parts(2:54);
name_parts_2 = name_parts(55:108);


x1 = 1:1:53;
x2 = 54:1:107;

names_1 = cell(53,1);
for i = 1: 53
    names_1{i} = name_parts_1(i);
end
names_2 = cell(54,1);
for i = 1: 54
    names_2{i} = name_parts_2(i);
end

subplot(2,1,1);
b1 = bar(x1,v_1,1, 'EdgeColor',[1 1 1]);
ylabel('% log scale')
set(gca, 'YScale', 'log')
set(gca, 'XTick', [1:53]);
set(gca, 'TickLength',[0 0])
set(gca, 'xticklabel',names_1);
a = get(gca,'xticklabel');
set(gca,'xticklabel',a,'fontsize',12);
set(gca, 'XTickLabelRotation', 90);

title('% pixel part');

subplot(2,1,2);
b2 = bar(x2,v_2,1, 'EdgeColor',[1 1 1]);
xlabel('Part names');
ylabel('% log scale');
set(gca, 'YScale', 'log')
set(gca, 'XTick', [54:107]);
set(gca, 'TickLength',[0 0])
set(gca, 'xticklabel',names_2);
g = get(gca,'xticklabel');
set(gca,'xticklabel',g,'fontsize',12)
set(gca, 'XTickLabelRotation', 90);

set(gcf,'PaperUnits','inches','PaperPosition',[0 0 20 12.5]); 
print('percentuale_parti', '-dpng', '-r300'); 
print('percentuale_parti_0', '-dsvg'); 

