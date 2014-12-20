load('/Users/nishithkhandwala/Desktop/CS229_Project/data/CS229_speech_imagery.mat');

numChannels = 67; timeSpan = 1351;

fileName = eval('S101');
syllable = fileName.F;
[cA, cH, cV, cD] = dwt2(syllable, 'db1');

featureVector = [cA cH; cV cD];

