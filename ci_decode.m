function [a b] = ci(X,num),

num_elements=length(X);
rand_num=rand;
xBar=sum(X)/num_elements;

some_magic=sqrt(sum(X.*X)/num_elements - sum(X)*sum(X) / num_elements / num_elements);
Y=sort(X);
other_magic=(.5*((num_elements^.5+num_elements)^2-num_elements^2-num_elements))^(1/3);

% 1 - This CI will always fulfill the condition in class. Should always be 100%
if num==1
    a=min(X);
    b=max(X);
% 2 - This CI is static based on the number of elements so unlikely.
elseif num==2
    a=Y(ceil(log(1.0202)*num_elements));
    b=Y(ceil(sin(259)/1.0140*num_elements));

% 3 - Maybe? Not because of other_magic, but maybe some_magic
elseif num==3   
    a = xBar-1.96*some_magic/other_magic;
    b = xBar+1.96*some_magic/other_magic;
    
% 4 - HAHA nope, this is static.
elseif num==4
    a=.035;
    b=.975;
    
% 5- Random, so absolutely not.
elseif num==5,
    if rand_num<.1,
        a=xBar;
        b=xBar;
    else
        a=0;
        b=1;
    end;
    
% 6 - Junk
elseif num==6
    if xBar<.05
        a = xBar;
        b = xBar;
    else
        a=0;
        b = 1;
    end;

% 7 -  This shouldn't be useful.
elseif num==7
    ep = sqrt(1/(2*num_elements)*log(2/.5));
    a = xBar-ep;
    b = xBar+ep;
    
% 8 - Unlikely, we should see some good ones, especially at lower values.
elseif num==8
    a=Y(ceil(.125*num_elements));
    b=Y(ceil(.925*num_elements));
    
% 9 - Unlikely to matter, but I'm not sure...
elseif num==9   
    a=xBar-2.5758*some_magic/other_magic;
    b=xBar+2.5758*some_magic/other_magic;
    
% As other_magic increases the variance should go down so no.
elseif num==10
    a=xBar-1/other_magic;
    b=xBar+1/other_magic;
else
    error('num must be an integer between 1 and 10');
end