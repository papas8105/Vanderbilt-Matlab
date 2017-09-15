function s = huge_add_alt_3(a,b)
if ~ischar(a) || ~ischar(b) || ~isempty(regexp(a,'[\,\.-]','once')) ||  ~isempty(regexp(b,'[\,\.-]','once'))
    s = -1;
    return
end
A = a; B = b;
carry = 0;
if length(b) > length(a)
    a = B;
    b = A;
end
s = cell(1,length(a));                                 % for matlab 2012a-b strjoin isn't in the libraries
for ii = 1 : length(b)                                 % prelocate a string with blank characters
    x = str2double(a(end-ii+1));                       % s = repmat(' ',1,length(a))
    y = str2double(b(end-ii+1));                       % line 17-23 s(ii) = num2str(mod(z,10))
    z = x + y + carry;                                 % line 26 not needed
    s{end-ii+1} = num2str(mod(z,10));                  % line 27-30 as is
    carry = fix(z/10);
end
for ii = length(a) - length(b) : - 1 : 1
    x = str2double(a(ii));
    z = x + carry;
    s{ii} = num2str(mod(z,10));
    carry = fix(z/10);
end
s = strjoin(s,'');
if carry ~= 0
    s = [num2str(carry,0) , s];
end
end
