function meanFeatureVector = meanFeatureExtractor(syllable, numParts)

numChannels = 67;

startTime = 101; endTime = 1201;
syllable = syllable(:, startTime:endTime);

[~, numCols] = size(syllable);
partSize = floor(numCols/numParts);

partsArray = zeros(numChannels, numParts);

for i = (1:numParts)
   partsArray(:, i) = mean(syllable(:, 1 + (i-1) * partSize : (i * partSize)), 2);
end

meanFeatureVector = reshape(partsArray, [1 numParts * numChannels]);

end

