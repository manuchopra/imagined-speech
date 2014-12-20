function structData = getStructData(fileNumber)

    load('/Users/nishithkhandwala/Desktop/CS229_Project/data/CS229_speech_imagery.mat');

    fileName = strcat('S',num2str(fileNumber));
    fileName = eval(fileName);
    structData = fileName.F;
end