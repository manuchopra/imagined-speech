load('/Users/nishithkhandwala/Desktop/CS229_Project/data/CS229_speech_imagery.mat');

inputMatrix = [];
targetVector = [];

for i = 3001:3178
    featureVector = meanFeatureExtractor(getStructData(i), 8);
    inputMatrix = [inputMatrix; featureVector];
    targetVector = [targetVector; 0];
end

for i = 4001:4172
    featureVector = meanFeatureExtractor(getStructData(i), 8);
    inputMatrix = [inputMatrix; featureVector];
    targetVector = [targetVector; 1];
end

net = patternnet(6);
net = train(net, inputMatrix', targetVector');
y = net(inputMatrix');
per = perform(net, targetVector', y)