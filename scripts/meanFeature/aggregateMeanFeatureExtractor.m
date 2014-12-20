function aggregateMeanFeatureVector = aggregateMeanFeatureExtractor(startFileNumber, endFileNumber)

load('/Users/nishithkhandwala/Desktop/CS229_Project/data/CS229_speech_imagery.mat');

numChannels = 67; timeSpan = 1351;

syllable = zeros(numChannels, timeSpan);

for indexFile = (startFileNumber:endFileNumber)
    fileName = strcat('S',num2str(indexFile));
    fileName = eval(fileName);
    syllable = syllable + fileName.F;
end

syllable = syllable ./ (endFileNumber - startFileNumber + 1);

numParts = 8;

aggregateMeanFeatureVector = meanFeatureExtractor(syllable, numParts);

end