X = [];
y = [];

% SVM

% for i = 101:180
%    featureVector = meanFeatureExtractor(getStructData(i), 8);
%    X = [X; featureVector];
% end
% 
% for i = 201:273
%    featureVector = meanFeatureExtractor(getStructData(i), 8);
%    X = [X; featureVector];
% end

for i = 3001:3178
    featureVector = meanFeatureExtractor(getStructData(i), 8);
    X = [X; featureVector];
    y = [y; 1];
end

for i = 4001:4172
    featureVector = meanFeatureExtractor(getStructData(i), 8);
    X = [X; featureVector];
    y = [y; -1];
end

SVMModel = fitcsvm(X, y);
CVSVMModel = crossval(SVMModel);
missClass = kfoldLoss(CVSVMModel);

missClass

