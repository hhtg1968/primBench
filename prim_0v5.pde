// sieb des e - (c) hhtg 2016 bis 2019 lv v 16-07-2019 21h54
byte[] zahl;float zeit,z2;int m,n,p,anz,runde=0,max=100000000;
void setup(){size(159,151);}
void draw(){zeit=millis();runde++;anz=0;zahl=new byte[max+1];m=(int)(sqrt(max)+0.5);
for(n=2;n<=m;n++){if(zahl[n]==0){for(p=n*n;p<=max;p=p+n){zahl[p]=1;}}}
for(n=2;n<=max;n++){if(zahl[n]==0){anz++;}}z2=millis();
background(0);text(anz,15,15);text("Primzahlen gefunden.",15,31);
text("Zwischen 0 und",15,47);text(max,15,63);text("Runde:",15,79);text(runde,15,95);
text("in",15,111);text((z2-zeit)/1000,15,127);text("Sekunden.",15,143);}
