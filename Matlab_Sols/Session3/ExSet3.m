
% xlsread(...) reads a .xls file with the name specified in the
% parenthesis.
myData_local = xlsread('myData');


% Here we separate the data hat we've read using the columns 
Exam1_Column = myData_local(:,1);
Exam2_Column = myData_local(:,2);
Exam3_Column = myData_local(:,3);
Exam4_Column = myData_local(:,4);
Exam5_Column = myData_local(:,5);


% Plotting the grade histogram for the 1st exam, and we've labeled the x, y
% axis along with giving the plot a title.
subplot(1, 5, 1)
histogram(Exam1_Column)
title('Exam 1')
xlabel('Grade scores')
ylabel('Number of Grades')


% To get the standard deviation mean and minimum we use std(), mean(),
% min(), and store the different values in separate lists consisting of the
% required standard deviations, minima, and means.

standardDev = [std(Exam1_Column); std(Exam2_Column)];
examAvg = [mean(Exam1_Column); mean(Exam2_Column)];
minExams = [min(Exam1_Column); min(Exam2_Column)];


% We form a table with the stats and export it as ExamStats.txt by using
% the writetable function.

examNames={'Maths'; 'Biology'};
examsTable = table(standardDev, examAvg,minExams, 'RowNames', examNames);
writetable(examsTable,'ExamStats.txt','WriteRowNames',true);


subplot(1,5, 2)
histogram(Exam2_Column)
% We use histfit to fit our grade hisogram with a normal distribution. To
% ge the stats related to the fit to be able to check them against our
% values we use fitdist() with the 'Normal' argument in place.

histfit(Exam2_Column)
disp(fitdist(Exam2_Column,'Normal'))

subplot(1,5, 3)
histogram(Exam3_Column)

subplot(1,5, 4)
histogram(Exam4_Column) 

subplot(1,5, 5)
histogram(Exam5_Column)


print('Histograms', '-djpeg')
