function [arn] = roman2( str )
% Introducation to Matlab on Coursera Homework 8
% Question#9
len=length(str);
sum=0;
for k=1:len
    a=str(k);
    
    if k<len
        b=str(k+1);
    else
        b=0;
    end

    if k<len && k>1
        z=str(k-1);
        b=str(k+1);
        if (z=='I'&&(b=='I'||b=='V')&&(a~='I'))||(z=='X'&&b=='X'&&(a=='L'||a=='C'))
            arn=uint16(0);
            return
        end
    end
    
    if k<len-2
        c=str(k+2);
        d=str(k+3);
        if a==b&&b==c&&c==d
            arn=uint16(0);
            return
        end
    end
    
    switch a
        case 'I'            
            if b=='V' ||b=='X'
                sum=sum-1;
            else
                sum=sum+1;
            end
        case 'V'
            sum=sum+5;
        case 'X'
            if b=='L' || b=='C'
                sum=sum-10;
            else
                sum=sum+10;
            end
        case 'L'
            sum=sum+50;
        case 'C'
            sum=sum+100;
    end   
end

if sum>399
    sum=0;
end

arn=uint16(sum);

end