% ricordarsi di aggiungere una riga alla tabella così non si perdono i
% valori del background

path1 = "G:\backup_data_31_jul_19\Test_deeplab_parts_2080_adj_loss\Test_incremental_softmax_adj_custom_adj_loss_l1_lambda_10.0_kern_init_he_uniform_epochs_14__class_108_lr_0.001_batch_2_size_321/results.xlsx";
path2 = "G:\Final_test\baseline\Test_baseline_14_batch_2_Train_class_baseline_108_lr_0.001_batch_2_size_321/results.xlsx";

% table = readtable(path);
% mIoU = table.mIoU;
% val_mIoU = zeros(108,1);
% 
% for i = 1: size(mIoU,1)
%     val_mIoU(i) = str2double( mIoU{i})*100;
% end
% 
% val_mIoU = val_mIoU(2:108);
val_1 = load_data(path1);
val_2 = load_data(path2);

name_parts = load("listNamePartsNoUnderScore.mat");
name_parts = name_parts.name_parts;

x = 1:1:107;
% y = val_mIoU;

y = horzcat(val_2,val_1);

bar(x,y,1, 'EdgeColor',[1 1 1]);

names = cell(107,1);
for i = 1: 107
    names{i} = name_parts(i);
end



set(gca, 'XTick', [1:108]);
set(gca, 'TickLength',[0 0])
%set(gca,'box','off')
set(gca, 'xticklabel',names);

a = get(gca,'xticklabel');
set(gca,'xticklabel',a,'fontsize',8)

set(gca, 'XTickLabelRotation', 90);
legend('baseline','softmax')

title('Baseline-Softmax')
xlabel('Part names')
ylabel('IoU')

set(gcf,'PaperUnits','inches','PaperPosition',[0 0 20 12.5]); 
print('prova_2', '-dpng', '-r300'); 
print('prova_3', '-dsvg'); 
% close(gcf)


