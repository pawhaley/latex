phi=[38,39,39,38,39]*60+[39,15,1,25,25];
phi=phi.*pi./(60*180);
dphi=2^(-3/2);
dphi=dphi.*pi./(60*180);
alph=60*60+2;
alph=alph.*pi./(60*180);
dalph=.5;
dalph=dalph.*pi./(60*180);

n=sin((phi+alph)./2)./sin(alph/2)

dn=(dphi.*(cos((phi+alph)./2))  ./ (2.*sin(alph./2))).^2+(dalph.*(cos((phi+alph)./2).*sin(alph./2)-sin((phi+alph)./2).*cos(alph./2))  ./ (2*(sin(alph./2))^2)).^2;
dn=sqrt(dn)

lamda=[501.567,471.314,492.193,587.562,447.148]

plot(lamda.^-2,(n.^2-1).^-1,'+k')
hold on;
coeff=polyfit(lamda.^-2,(n.^2-1).^-1,1)

plot(lamda.^-2,lamda.^-2.*coeff(1)+coeff(2),'-b')

xlabel("(wevelength)^{-2} ((nm)^{-2})");
ylabel("(n^2-1)^{-1}");
hold off;