using PyPlot

function pause()
    #Is there a better way to do this ?
    return readline();
end

function warmUpExercise()
    return eye(5)
end

function plotData(x,y)
    xlabel("X")
    ylabel("y")
    scatter(X,y)
end

#main
println("Running warmUpExercise ...")
println("5x5 Identity Matrix:")
println(warmUpExercise())
println("Program paused. Press enter to continue.")
pause()

#load the data
data = readdlm("./ex1data1.txt",',')
#add a column of ones to x
X = [ones(m,1) data[:,1]];
y = data[:,2];
m = length(y);
theta = zeros(2,1);

computeCost(X,y,theta)

#plot the data
plotData(X, y);

