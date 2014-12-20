---------------------------------------------------------
CS229 Machine Learning - Autumn 2014-15
---------------------------------------------------------
Team Members: Barak Oshri, Manu Chopra, Nishith Khandwala
---------------------------------------------------------

Classifying syllables in Imagined Speech using EEG

Predicting: Imagined speech refers to the process in which a subject imagines speaking a given word without moving any muscle or sound. The ability to understand imagined speech will fundamentally change the way we interact with our devices. We’d like to classify the syllables “ba”, “ku” ,“im” and “si” from imagined speech EEG signals. These syllables were selected since they contain no semantic meaning so that classification would be performed on the imagined speech instead of the semantic contribution to imagined speech production. Our model is successfully able to classify syllable pairs from the EEG data with over 90 percent accuracy.

Data Collection: We created our own data set by making use of Professor Takako Fujioka’s EEG lab at Center for Computer Research in Music and Acoustics (CCRMA). In our experiment, the subject imagined speaking the four syllables ‘ba / ku’ and ‘im / si’ based on pre decided audio cues while their electrical brain wave activity was being recorded by EEG. The audio cue corresponded to either a high beep or low beep. The beeps were randomized and each beep type corresponded to a particular syllable. The obtained data has 200 samples of each syllable we wish to classify in the pairs ("ba","ku") and ("im", "si").  Each sample is represented by a matrix of 67 rows (the number of electrodes on the EEG cap obtaining data simultaneously) and 1351 columns (time axis).

Features:  We implemented two feature extractors. Mean Feature Extractor and Discrete Wavelet Transform. In the Mean Feature Extractor, for every channel, we average the data for each syllable from all the trials. The wave for each channel is divided into 8 parts. Each part is averaged and hence every channel corresponds to a set of 8 values. We also used DWT along with Principal Component Analysis.

Models Used: We used several models to classify our data including k-nearest neighbors, Naïve Bayes and Neural Networks. 

Results Obtained:  After some extensive experiments, we realized that Neural Networks gave us the best result. See our research paper at http://www.manuchopra.in/paper.pdf for more details.

Discussion: We were both surprised and initially skeptical of our accurate results.  The use of Artificial Neural Networks in classification of imagined speech is relatively undocumented in the sphere of BCI. Given the promising results of neural networks in this experiment, we feel that there is an uncalled for confidence in the use of feature methods in the research community and that more attention needs to be paid to nonlinear analysis of thoughts in EEG data. This is perhaps most relevant in light of the fact that there is little to no understanding of the neural mechanisms behind thought formation including imagined speech, which makes neural networks the best direction forward until we can more aptly characterize the features (such as action or event-related potentials) that characterize syllables and words.

Future: Our results prove that it is possible to successfully classify certain syllables from imagined speech EEG data. In the future, we would like to classify more syllables, combining them to make words and finally, sentences. We would also like to test our models on more subjects and generalize our system to multiple subjects to ensure a more robust Brain Computer Interface (BCI) system.

References: 
Prof. Vijayakumar Bhagavatula, Advanced Signal Processing and Machine Learning Approaches for EEG Analysis , Carnegie Mellon University - July 2010
Kamalakkannan R., Rajkumar R., Madan Raj. M., Shenbaga Devi. S, Imagined Speech Classification using EEG - September 2014
Abdulhamit Subasi, Classification of EEG signals using neural network and logistic regression - May 2004 


