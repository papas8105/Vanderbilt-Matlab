function out = movies(hr1,min1,durmin1,hr2,min2,~) %durmin2 not neede
first_movie_ends         = hr1*60 + min1 + durmin1 ;
second_movie_starts      = hr2*60 + min2           ;
out = false                                        ;
if (first_movie_ends <= second_movie_starts) && (first_movie_ends + 30) >= second_movie_starts
    out = true;
end
end