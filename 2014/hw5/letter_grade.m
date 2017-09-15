function letter = letter_grade(score)
if score >= 91
    letter = 'A';
elseif score >= 81
    letter = 'B';
elseif score >= 71
    letter = 'C';
elseif score >= 61
    letter = 'D';
else
    letter = 'F';
end
end