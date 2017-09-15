function v = maxproduct(A,n)
assert(isscalar(n) && isnumeric(n) && n >= 0 && ceil(n) == n,'error radius must be greater than zero!');
c = cell(size(A,1),size(A,2));
%search through the four corners of the earth
%by the last breath the fourth winds blow
%www.youtube.com/watch?v=kLHnP7-90Ks
for ii = 1 : size(A,1)
    for jj = 1 : size(A,2)
        directions = 'NWNONEEASESOSWWE';
        try %NW
            A(ii-n+1:ii,jj-n+1:jj);
        catch
            directions(1:2) = 'xx';
        end
        try %NO
            A(ii-n+1:ii,jj);
        catch
            directions(3:4) = 'xx';
        end
        try %NE
            A(ii-n+1:ii,jj:jj+n-1);
        catch
            directions(5:6) = 'xx';
        end
        try %EA
            A(ii,jj:jj+n-1);
        catch
            directions(7:8) = 'xx';
        end
        try %SE
            A(ii:ii+n-1,jj:jj+n-1);
        catch
            directions(9:10) = 'xx';
        end
        try %SO
            A(ii:ii+n-1,jj);
        catch
            directions(11:12) = 'xx';
        end
        try %SW
            A(ii:ii+n-1,jj-n+1:jj);
        catch
            directions(13:14) = 'xx';
        end
        try %WE
            A(ii,jj-n+1:jj);
        catch
            directions(15:16) = 'xx';
        end
        c{ii,jj} = directions;
    end
end
p = 0;v = [];
for ii = 1 : size(c,1)
    for jj = 1 : size(c,2)
        el = c{ii,jj};
        for kk = 1 : 8
            input = el(2*kk-1:2*kk);
            switch input
                case 'NW'
                    pr    = prod(diag(A(ii-n+1:ii,jj-n+1:jj)));
                    ind  = [(ii-n+1:ii)',(jj-n+1:jj)'];
                    if pr > p
                        v = ind;
                        p = pr;
                    end
                case 'NO'
                    pr    = prod(A(ii-n+1:ii,jj));
                    ind  = [(ii-n+1:ii)',repmat(jj,n,1)];
                    if pr > p;
                        v = ind;
                        p = pr;
                    end
                case 'NE'
                    pr    = prod(diag(flipud(A(ii-n+1:ii,jj:jj+n-1))));
                    ind  = [(ii-n+1:ii)',(jj+n-1:-1:jj)'];
                    if pr > p
                        v = ind;
                        p = pr;
                    end
                case 'EA'
                    pr    = prod(A(ii,jj:jj+n-1));
                    ind  = [repmat(ii,n,1),(jj:jj+n-1)'];
                    if pr > p
                        v = ind;
                        p = pr;
                    end
                case 'SE'
                    pr    = prod(diag(A(ii:ii+n-1,jj:jj+n-1)));
                    ind  = [(ii:ii+n-1)',(jj:jj+n-1)'];
                    if pr > p
                        v = ind;
                        p = pr;
                    end
                case 'SO'
                    pr    = prod(A(ii:ii+n-1,jj));
                    ind  = [(ii:ii+n-1)',repmat(jj,n,1)];
                    if pr > p
                        v = ind;
                        p = pr;
                    end
                case 'SW'
                    pr    = prod(diag(flipud(A(ii:ii+n-1,jj-n+1:jj))));
                    ind  = [(ii:ii+n-1)',(jj:-1:jj-n+1)'];
                    if pr > p
                        v = ind;
                        p = pr;
                    end
                case 'WE'
                    pr    = prod(A(ii,jj-n+1:jj));
                    ind  = [repmat(ii,n,1),(jj-n+1:jj)'];
                    if pr > p
                        v = ind;
                        p = pr;
                    end
            end
        end
    end
end
end
