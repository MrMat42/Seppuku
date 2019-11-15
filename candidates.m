function C = candidates(sudoku)
    m = length(sudoku);
    
    if m == 4
    leftup4 = [sudoku(1), sudoku(5); sudoku(2), sudoku(6)];
    leftdown4 = [sudoku(3), sudoku(7); sudoku(4), sudoku(8)];
    rightup4 = [sudoku(9), sudoku(13); sudoku(10), sudoku(14)];
    rightdown4 = [sudoku(11), sudoku(15); sudoku(12), sudoku(16)];
    end
    
    if m == 9
    leftup9 = [sudoku(1), sudoku(10), sudoku(19); sudoku(2), sudoku(11), sudoku(20); sudoku(3), sudoku(12), sudoku(21)];
    middleup9 = [sudoku(28), sudoku(37), sudoku(46); sudoku(29), sudoku(38), sudoku(47); sudoku(30), sudoku(39), sudoku(48)];
    rightup9 = [sudoku(55), sudoku(64), sudoku(73); sudoku(56), sudoku(65), sudoku(74); sudoku(57), sudoku(66), sudoku(75)];
    leftmiddle9 = [sudoku(4), sudoku(13), sudoku(22); sudoku(5), sudoku(14), sudoku(23); sudoku(6), sudoku(15), sudoku(24)];
    middlemiddle9 = [sudoku(31), sudoku(40), sudoku(49); sudoku(32), sudoku(41), sudoku(50); sudoku(33), sudoku(42), sudoku(51)];
    rightmiddle9 = [sudoku(58), sudoku(67), sudoku(76); sudoku(59), sudoku(68), sudoku(77); sudoku(60), sudoku(69), sudoku(78)];
    leftdown9 = [sudoku(7), sudoku(16), sudoku(25); sudoku(8), sudoku(17), sudoku(26); sudoku(9), sudoku(18), sudoku(27)];
    middledown9 = [sudoku(34), sudoku(43), sudoku(52); sudoku(35), sudoku(44), sudoku(53); sudoku(36), sudoku(45), sudoku(54)];
    rightdown9 = [sudoku(61), sudoku(70), sudoku(79); sudoku(62), sudoku(71), sudoku(80); sudoku(63), sudoku(72), sudoku(81)];
    end
    
    C = cell(m);
    C(:,:) = {1:m};
    for i = 1:m
        for j = 1:m
            for k = 1:m
             C{i,j}(C{i,j} == sudoku(i,k)) = [];
             C{i,j}(C{i,j} == sudoku(k,j)) = [];
             
             if m == 4
                 if ismember(i,[1,2]) && ismember(j,[1,2])
                   for l = 1:m
                        C{i,j}(C{i,j} == leftup4(l)) = [];
                   end
                 end

                 if ismember(i,[1,2]) && ismember(j,[3,4])
                   for l = 1:m
                        C{i,j}(C{i,j} == rightup4(l)) = [];
                   end
                 end

                 if ismember(i,[3,4]) && ismember(j,[1,2])
                   for l = 1:m
                        C{i,j}(C{i,j} == leftdown4(l)) = [];
                   end
                 end

                 if ismember(i,[3,4]) && ismember(j,[3,4])
                   for l = 1:m
                        C{i,j}(C{i,j} == rightdown4(l)) = [];
                   end
                 end
             end
             
             
             if m == 9
                 if ismember(i,[1:3]) && ismember(j,[1:3])
                   for l = 1:m
                        C{i,j}(C{i,j} == leftup9(l)) = [];
                   end
                 end
                 
                 if ismember(i,[1:3]) && ismember(j,[4:6])
                   for l = 1:m
                        C{i,j}(C{i,j} == middleup9(l)) = [];
                   end
                 end
                 
                if ismember(i,[1:3]) && ismember(j,[7:9])
                   for l = 1:m
                        C{i,j}(C{i,j} == rightup9(l)) = [];
                   end
                end

                 
                 if ismember(i,[4:6]) && ismember(j,[1:3])
                   for l = 1:m
                        C{i,j}(C{i,j} == leftmiddle9(l)) = [];
                   end
                 end
                 
                 if ismember(i,[4:6]) && ismember(j,[4:6])
                   for l = 1:m
                        C{i,j}(C{i,j} == middlemiddle9(l)) = [];
                   end
                 end
                 
                if ismember(i,[4:6]) && ismember(j,[7:9])
                   for l = 1:m
                        C{i,j}(C{i,j} == rightmiddle9(l)) = [];
                   end
                end
                
                
                
                 if ismember(i,[7:9]) && ismember(j,[1:3])
                   for l = 1:m
                        C{i,j}(C{i,j} == leftdown9(l)) = [];
                   end
                 end
                 
                 if ismember(i,[7:9]) && ismember(j,[4:6])
                   for l = 1:m
                        C{i,j}(C{i,j} == middledown9(l)) = [];
                   end
                 end
                 
                if ismember(i,[7:9]) && ismember(j,[7:9])
                   for l = 1:m
                        C{i,j}(C{i,j} == rightdown9(l)) = [];
                   end
                end
                 
             end
             
            end
        end
    end
    
    for i = 1:(length(sudoku))^2
       if sudoku(i) ~= 0
           C{i}=sudoku(i);
       end
    end
    
end

