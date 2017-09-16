function coded = codeit(txt)
coded = txt                              ;
small = regexp(txt,'[a-z]')              ;
big   = regexp(txt,'[A-Z]')              ;
coded(big) = char('A'+'Z'-txt(big))      ;
coded(small) = char('a'+'z'-txt(small))  ;
end