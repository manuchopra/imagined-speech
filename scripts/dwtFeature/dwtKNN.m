baFeatureVector = aggregateDwtFeatureExtractor(101, 180);
kuFeatureVector = aggregateDwtFeatureExtractor(201, 273);
imFeatureVector = aggregateDwtFeatureExtractor(3001, 3178);
siFeatureVector = aggregateDwtFeatureExtractor(4001, 4172);

trainingMatrix = [baFeatureVector; kuFeatureVector; imFeatureVector; siFeatureVector];
%trainingMatrix = [baFeatureVector; kuFeatureVector];
%trainingMatrix = [imFeatureVector; siFeatureVector];

testMatrix = [];

% KNN

for i = 101:180
   featureVector = dwtFeatureExtractor(getStructData(i), 6);
   testMatrix = [testMatrix; featureVector];
end

for i = 201:273
   featureVector = dwtFeatureExtractor(getStructData(i), 6);
   testMatrix = [testMatrix; featureVector];
end

for i = 3001:3178
    featureVector = dwtFeatureExtractor(getStructData(i), 6);
    testMatrix = [testMatrix; featureVector];
end

for i = 4001:4172
    featureVector = dwtFeatureExtractor(getStructData(i), 6);
    testMatrix = [testMatrix; featureVector];
end

%%%%%% 'ba', 'ku', 'im', 'si' all %%%%%%

labels = {'ba'; 'ku'; 'im'; 'si'};

%%%%%% 'ba', 'ku' %%%%%%

%labels = {'ba'; 'ku'};

%%%%%% 'im', 'si' only %%%%%%

%labels = {'im'; 'si'};

class = knnclassify(testMatrix, trainingMatrix, labels);

%%%%%% 'ba', 'ku', 'im', 'si' all %%%%%%

bas = class(1:80);
kus = class(81:153);
ims = class(154:331);
sis = class(332:503);

%%%%%% 'ba', 'ku' %%%%%%

% bas = class(1:80);
% kus = class(81:153);

%%%%%% 'im', 'si' only %%%%%%

%ims = class(1:178);
%sis = class(179:350);

count = 0;
for i = 1:80
    if strcmp(bas(i),'ba') == 1
        count = count + 1;
    end
end
count/80.0
% 
count = 0;
for i = 1:73
    if strcmp(kus(i),'ku') == 1
        count = count + 1;
    end
end
count/73.0
% 
count = 0;
for i = 1:178
    if strcmp(ims(i),'im') == 1
        count = count + 1;
    end
end
count/178.0
% 
count = 0;
for i = 1:172
    if strcmp(sis(i),'si') == 1
        count = count + 1;
    end
end
count/172.0

% disp('Results: ');
% disp(class);