function Recognition001_Digit()
    fprint('\nLoad du lieu train');
    imgTrainAll = loadMNISTImages('data/train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('data/train-labels.idx1-ubyte');
    fprint('\nLoad du lieu test');
    imgTestAll = loadMNISTImages('data/tk10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('data/t10k-labels.idx1-ubyte');
    fprintf('\nKet thuc.');
end



