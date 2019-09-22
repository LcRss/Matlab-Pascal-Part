function [outputArg1] = load_data(path)

    table = readtable(path);
    mIoU = table.mIoU;
    val_mIoU = zeros(108,1);

    for i = 1: size(mIoU,1)
        val_mIoU(i) = str2double( mIoU{i})*100;
    end

    val_mIoU = val_mIoU(1:108);
    
    outputArg1 = val_mIoU;
end

