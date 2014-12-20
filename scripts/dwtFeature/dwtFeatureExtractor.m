function DWTFeature = dwtFeatureExtractor(syllable, numParts)

    startTime = 101; endTime = 1201;
    syllable = syllable(:, startTime:endTime);

    [cA,cH,cV,cD] = dwt2(syllable,'db1');
    
    sizeMatrixcA = size(cA);
    partsArraycA = zeros(sizeMatrixcA(1), numParts);
    partSizecA = floor(sizeMatrixcA(2) / numParts);

    for i = (1:numParts)
       partsArraycA(:, i) = mean(cA(:, 1 + (i-1) * partSizecA : (i * partSizecA)), 2);
    end
    
    sizeMatrixcH = size(cH);
    partsArraycH = zeros(sizeMatrixcH(1), numParts);
    partSizecH = floor(sizeMatrixcH(2) / numParts);

    for i = (1:numParts)
       partsArraycH(:, i) = mean(cH(:, 1 + (i-1) * partSizecH : (i * partSizecH)), 2);
    end

    sizeMatrixcV = size(cV);
    partsArraycV = zeros(sizeMatrixcV(1), numParts);
    partSizecV = floor(sizeMatrixcV(2) / numParts);

    for i = (1:numParts)
       partsArraycV(:, i) = mean(cV(:, 1 + (i-1) * partSizecV : (i * partSizecV)), 2);
    end

    sizeMatrixcD = size(cD);
    partsArraycD = zeros(sizeMatrixcD(1), numParts);
    partSizecD = floor(sizeMatrixcD(2) / numParts);

    for i = (1:numParts)
       partsArraycA(:, i) = mean(cA(:, 1 + (i-1) * partSizecD : (i * partSizecD)), 2);
    end

    partsArraycA = reshape(partsArraycA, [1 numParts * sizeMatrixcA(1)]);
    partsArraycH = reshape(partsArraycH, [1 numParts * sizeMatrixcH(1)]);
    partsArraycV = reshape(partsArraycV, [1 numParts * sizeMatrixcV(1)]);
    partsArraycD = reshape(partsArraycD, [1 numParts * sizeMatrixcD(1)]);

    DWTFeature = [partsArraycA partsArraycH partsArraycV partsArraycD];

end