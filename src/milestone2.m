% Welcome message
fprintf("\tWelcome to SMART UNIT CONVERSION program!\n");
fprintf("\tIndividual Project Milestone 2\n");
fprintf("\tby Hoang Nguyen - s3697305\n\n");

% Program description
fprintf("\tThis program can automatically detect a number and a unit from a single user input\n ");
fprintf("\tto perform multiple unit conversions in the most intuitive fashion.\n\n");

% Display clean interface
fprintf("\tPlease enter a number followed by a unit symbol in the bracket () below\n\tto convert to its corresponding metric or imperial unit:\n\n");
fprintf("\t\t\tMetric\t\t\t\tImperial\n");
fprintf("\tTemperature:\n");
fprintf("\t\t1. Celsius degree (C)\t<->\tFahrenheit degree (F)\n");
fprintf("\tLength and Distance:\n");
fprintf("\t\t2. Centimeters (cm)\t<->\tInches (inch)\n");
fprintf("\t\t3. Meter (m)\t\t<->\tFeet (ft)\n");
fprintf("\t\t4. Kilometers (km)\t<->\tMiles (mi)\n");
fprintf("\tMass:\n");
fprintf("\t\t5. Grams (gr)\t\t<->\tOunces (oz)\n");
fprintf("\t\t6. Kilograms (kg)\t<->\tPounds (lb)\n");
fprintf("\t\t7. Metric tonne (tonne)\t<->\tImperial ton (ton)\n\n");
fprintf('\tTo display the instructions again, type "help".\n');
fprintf('\tTo exit the program, simply type "exit" or "quit".\n');

while 1
    userIn = input("\nEnter a number: ", "s");
    
    % Extract number from input
    regexNum = "[-+]?[0-9]*\.?[0-9]*";
    numberIn = regexp(userIn, regexNum, 'match');
    numberIn = join(numberIn, '');
    numberIn = str2double(numberIn);

    % Extract unit from input
    regexUnit = "[a-zA-Z]";
    unitIn = regexp(userIn, regexUnit, 'match');
    unitIn = strjoin(unitIn, '');
    unitIn = lower(unitIn);

    % Validate user input
    if isempty(userIn)
        disp("No input!");
    elseif userIn == "exit" || userIn == "quit"
        fprintf("\nHave a nice day!");
        fprintf("\nProgram finished.\n");
        break
    elseif userIn == "help"
            fprintf("\n\tPlease enter a number followed by a unit symbol in the bracket () below\n\tto convert to its coresponding metric or imperial unit:\n\n");
            fprintf("\t\t\tMetric\t\t\t\tImperial\n");
            fprintf("\tTemperature:\n");
            fprintf("\t\t1. Celsius degree (C)\t<->\tFahrenheit degree (F)\n");
            fprintf("\tLength and Distance:\n");
            fprintf("\t\t2. Centimeters (cm)\t<->\tInches (inch)\n");
            fprintf("\t\t3. Meter (m)\t\t<->\tFeet (ft)\n");
            fprintf("\t\t4. Kilometers (km)\t<->\tMiles (mi)\n");
            fprintf("\tMass:\n");
            fprintf("\t\t5. Grams (gr)\t\t<->\tOunces (oz)\n");
            fprintf("\t\t6. Kilograms (kg)\t<->\tPounds (lb)\n");
            fprintf("\t\t7. Metric tonne (tonne)\t<->\tImperial ton (ton)\n\n");
            fprintf('\tTo display the instructions again, type "help".\n');
            fprintf('\tTo exit the program, simply type "exit" or "quit".\n');
    elseif isempty(numberIn)
        disp("Invalid input! Missing a number.");
    elseif isempty(unitIn)
        disp("Invalid input! Missing a unit.");
    else
        % Perform conversion based on the unit from user input
        
        % °C -> °F
        if unitIn == "c"
            unitIn = "°C";
            numberOut = (numberIn * 9/5) + 32;
            unitOut = "°F";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            
        %  °F -> °C
        elseif unitIn == "f"
            unitIn = "°F";
            numberOut = (numberIn - 32) * 5/9;
            unitOut = "°C";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
        
        % cm -> inch 
        elseif unitIn == "cm"
            if numberIn < 0
                disp("Invalid input! Length must be a positive number.");
            else
            numberOut = numberIn/2.54;
            unitOut = "inch";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
        
        % inch -> cm
        elseif unitIn == "inch"
            if numberIn < 0
                disp("Invalid input! Length must be a positive number.");
            else
            numberOut = numberIn * 2.54;
            unitOut = "cm";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
            
        % m -> feet
        elseif unitIn == "m"
            if numberIn < 0
                disp("Invalid input! Length must be a positive number.");
            else
            numberOut = numberIn/0.3048;
            unitOut = "feet";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
            
        % feet -> m
        elseif unitIn == "ft"
            if numberIn < 0
                disp("Invalid input! Length must be a positive number.");
            else
            unitIn = "feet";
            numberOut = numberIn * 0.3048;
            unitOut = "m";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end

        % km -> miles
        elseif unitIn == "km"
            if numberIn < 0
                disp("Invalid input! Length must be a positive number.");
            else
            numberOut = numberIn / 1.609344;
            unitOut = "miles";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
            
        % miles -> km
        elseif unitIn == "mi"
            if numberIn < 0
                disp("Invalid input! Length must be a positive number.");
            else
            unitIn = "miles";
            numberOut = numberIn * 1.609344;
            unitOut = "km";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
        
        % grams -> ounces
        elseif unitIn == "gr"
            if numberIn < 0
                disp("Invalid input! Mass must be a positive number.");
            else
            unitIn = "grams";
            numberOut = numberIn/28.3495;
            unitOut = "ounces";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
            
        % ounces -> grams
        elseif unitIn == "oz"
            if numberIn < 0
                disp("Invalid input! Mass must be a positive number.");
            else
            unitIn = "ounces";
            numberOut = numberIn * 28.349;
            unitOut = "grams";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
            
        % kg -> pounds
        elseif unitIn == "kg"
            if numberIn < 0
                disp("Invalid input! Mass must be a positive number.");
            else
            numberOut = numberIn/0.4536;
            unitOut = "pounds";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
            
        % pounds -> kg
        elseif unitIn == "lb"
            if numberIn < 0
                disp("Invalid input! Mass must be a positive number.");
            else
            unitIn = "pounds";
            numberOut = numberIn * 0.4536;
            unitOut = "kg";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
            
        % tonne (met) -> ton (imp)
        elseif unitIn == "tonne"
            if numberIn < 0
                disp("Invalid input! Mass must be a positive number.");
            else
            unitIn = "tonne (met)";
            numberOut = numberIn/1.016;
            unitOut = "ton (imp)";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
            
        % ton (imp) -> tonne (met)
        elseif unitIn == "ton"
            if numberIn < 0
                disp("Invalid input! Mass must be a positive number.");
            else
            unitIn = "ton (imp)";
            numberOut = numberIn * 1.016;
            unitOut = "tonne (met)";
            fprintf("%.2f %s = %.2f %s\n", numberIn, unitIn, numberOut, unitOut);
            end
        else
            disp("Invalid input! Please read instructions again.");
        end
    end
end