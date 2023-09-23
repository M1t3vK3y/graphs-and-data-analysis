fitresult = fit(x,y,'poly1');
p11 = predint(fitresult,x,0.95,'functional','on');
subplot(1,1,1)
xsort=sort(x,'descend');
p11sort=sort(p11,'descend');
plot(fitresult,x,y), hold on, plot(xsort,p11sort,'m--'), hold on, plot(z,w,'k-'), xlim([0 250]), ylim([0 250])

title('','FontSize',9)
legend ('measures','fit','95% CI up','95% CI down','slope 1')
xlabel('Real concentration (mg/L)') 
ylabel('Predicted concentration (mg/L)') 


