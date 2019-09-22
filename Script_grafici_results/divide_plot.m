% ricordarsi di aggiungere una riga alla tabella così non si perdono i
% valori del background

path2 = "G:\backup_data_31_jul_19\Test_deeplab_parts_2080_adj_loss\Test_incremental_softmax_adj_custom_adj_loss_l1_lambda_10.0_kern_init_he_uniform_epochs_14__class_108_lr_0.001_batch_2_size_321/results.xlsx";
path1 = "G:\Final_test\baseline\Test_baseline_14_batch_2_Train_class_baseline_108_lr_0.001_batch_2_size_321/results.xlsx";

name_parts = load("listNamePartsNoUnderScore.mat");
name_parts = name_parts.name_parts;
name_parts_1 = name_parts(1:54);
name_parts_2 = name_parts(55:108);

val_1 = load_data(path1);
val_2 = load_data(path2);

val_1_1 = val_1(1:54);
val_1_2 = val_1(55:108);

val_2_1 = val_2(1:54);
val_2_2 = val_2(55:108);

x1 = 1:1:54;
x2 = 55:1:108;

y1 = horzcat(val_1_1,val_2_1);
y2 = horzcat(val_1_2,val_2_2);

names_1 = cell(54,1);
for i = 1: 54
    names_1{i} = name_parts_1(i);
end

names_2 = cell(54,1);
for i = 1: 54
    names_2{i} = name_parts_2(i);
end

subplot(2,1,1);
b1 = bar(x1,y1,1, 'EdgeColor',[1 1 1]);
% xlabel('Part names')
ylabel('IoU')

set(gca, 'XTick', [1:55]);
set(gca, 'TickLength',[0 0])
set(gca, 'xticklabel',names_1);
a = get(gca,'xticklabel');
set(gca,'xticklabel',a,'fontsize',12);
set(gca, 'XTickLabelRotation', 90);

legend('baseline','softmax');
title('Baseline-Softmax');

subplot(2,1,2);
b2 = bar(x2,y2,1, 'EdgeColor',[1 1 1]);
xlabel('Part names');
ylabel('IoU');

set(gca, 'XTick', [1:108]);
set(gca, 'TickLength',[0 0])
set(gca, 'xticklabel',names_2);
g = get(gca,'xticklabel');
set(gca,'xticklabel',g,'fontsize',12)
set(gca, 'XTickLabelRotation', 90);

% title('Baseline-Softmax')
% xlabel('Part names')
% ylabel('IoU')

set(gcf,'PaperUnits','inches','PaperPosition',[0 0 20 12.5]); 
print('divide2', '-dpng', '-r300'); 
print('divide2_1', '-dsvg'); 
% close(gcf)

