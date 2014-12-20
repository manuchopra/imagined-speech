X = [];
y = [];

for i = 3001:3178
    featureVector = dwtFeatureExtractor(getStructData(i), 8);
    X = [X; featureVector];
    y = [y; 'im'];
end

for i = 4001:4172
    featureVector = dwtFeatureExtractor(getStructData(i), 8);
    X = [X; featureVector];
    y = [y; 'si'];
end

nb = fitNaiveBayes(X, y);
p = nb.predict(X);
cMat = confusionmat(y, p);

cMat