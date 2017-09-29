function Recognition004_Digits()
    fprintf('\nLoad du lieu train');
    imgTrainAll = loadMNISTImages('data/train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('data/train-labels.idx1-ubyte');
    fprintf('\nLoad du lieu test\n');
    imgTestAll = loadMNISTImages('data/t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('data/t10k-labels.idx1-ubyte');
    
    nTrainImages = size(imgTrainAll, 2);
    nNumber = randi([1 nTrainImages]);
    
    figure;
    img = imgTrainAll(:,nNumber);
    img2D = reshape(img, 28, 28);
    strLabelImage = num2str(lblTrainAll(nNumber));
    strLabelImage = [strLabelImage,'(',num2str(nNumber),')'];

    imshow(img2D);
    title(strLabelImage);
    
    %part 2
    nTestImgs = size(imgTestAll, 2);
    nNumber = randi([1 nTestImgs]);
    figure;
    img = imgTestAll(:, nNumber);
    img2D = reshape(img, 28, 28);
    strLabelImage = num2str(lblTestAll(nNumber));
    strLabelImage = [strLabelImage, '(', num2str(nNumber), ')'];
    imshow(img2D);
    title(strLabelImage);
end