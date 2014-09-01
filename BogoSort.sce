// bogosort algorithm

clear;
function bogoSort()
    // generate a vector of random numbers
    clear;
    bogoList = []
    for i=1:100
        bogoList(i) = round(rand()*10)
    end

    // We have now created a list of randomly generated numbers (0-100)
    // We check to see if the numbers are sorted - if not - we jumble them up!
    isSorted = checkSort(bogoList)

    while(~isSorted)
        disp('Try again')
        bogoList = mixList(bogoList) 
        isSorted = checkSort(bogoList)
        disp(bogoList)
        c = [1:length(bogoList)]
        clf();plot2d(c,bogoList)
        input('space to shuffleeeeee!')
    end

endfunction

function y=mixList(unsortedList)
    for i=1:length(unsortedList)
        randomPos = round(1+rand()*(length(unsortedList)-1))
        currentNum = unsortedList(i)
        unsortedList(i) = unsortedList(randomPos)
        unsortedList(randomPos)=currentNum;
    end
    y=unsortedList
endfunction

function x=checkSort(sortedList)
    x=%T
    for i=1:length(sortedList)-1
       if(sortedList(i)>sortedList(i+1)) 
            // If the previous number is larger than the current one
        x=%F
        break;         
        end
    end
endfunction