%testing the effects of parameters in Canny edge detector

%varying sigma
figure(1)
for s=0.5:0.5:2
    s
    E=edge(I,'canny',[],s);
    imshow(E)
    pause
end

figure(2)
%varying threshold
for tHigh=0.05:0.05:0.3
    tHigh
    E=edge(I,'canny',[0.4*tHigh tHigh],1.5);
    imshow(E)
    pause
end
