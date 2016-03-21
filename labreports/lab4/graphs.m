diam=[.0155,.02025,.026,.0315,.03725,.0405,.0435,.047,.05125,.054875,.0575];
si=[1.0765,1.0720,1.0660,1.0575,1.0500,1.0415,1.0340,1.0270,1.0180,1.0130,1.0010];
so=.1235;
l=.693;

f=1./(1./(si-l)+1./(l-so));
plot(diam,f,'bx');
hold on;
xlabel("diamiter (m)");
ylabel("focal length (m)");

hold off;

l=.8055;
si=[1.1965, 1.1985, 1.1985, 1.1915, 1.187, 1.186];
wevelength=[625,650,615,550,500,475];
f=1./(1./(si-l)+1./(l-so));
plot(wevelength,f,'rx');
hold on;
xlabel("wevelength (nm)");
ylabel("focal length (m)");

hold off;

l=.92
ang=[[-35:5:-10],[10:5:35]];
sagital=[1.151,1.204,1.269,1.312,1.353,1.3775,1.376,1.351,1.315,1.268,1.201,1.155];
tangential=[1.334,1.3565,1.364,1.379,1.386,1.397,1.395,1.386,1.3675,1.3565,1.328,1.323];
sagitalf=1./(1./(sagital-l)+1./(l-so));
tangentialf=1./(1./(tangential-l)+1./(l-so));
plot(ang,sagitalf,'bx')
hold on
plot(ang,tangentialf,'ro')
xlabel("angle (deg)");
ylabel("focal length (m) blue=sagital red=tangential");

hold off;