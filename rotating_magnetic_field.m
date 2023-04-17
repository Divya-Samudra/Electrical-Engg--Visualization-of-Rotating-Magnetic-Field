% CALCULATE NET MAGNETIC FIELD PRODUCED BY A THREE-PHASE STATOR
% BMAX = 1
% FREQUENCY = 60 HZ
% GENERATE THREE COMPONENTS MAGNETIC FIELD
hz = 60;
t  = 0:1/6000:1/60;
omega = hz*2*3.14159;
j = sqrt(-1);
Bx = sin(omega*t)*(cos(0) + j*sin(0));
By = sin(omega * t - 2*pi/3)*(cos(2*pi/3)+ j*sin(2*pi/3));
Bz = sin(omega*t + 2*pi/3)*(cos(-2*pi/3)+ j*sin(-2*pi/3));
Br = Bx + By + Bz
circle = 1.5*(cos(omega*t)+ j*sin(omega*t));
% plot the magnitude and direction of the resultant magnetic field Br 1.5 * Bmax*angle
ii = 1:length(t);
k = 1;
%subplot(3,1,1)
%plot([ 0 real(Bx(ii))],[0 j*(Bx(ii))],'k','linewidth',2)
%subplot(3,1,2)
%plot(circle, 'k')
%subplot(3,1,3)
%plot (Br,t)

iii = 59;
for iii=1:101
    k(1)=Bx(iii);
    k(2)=By(iii);
    k(3)=Bz(iii);
    k(4)=Br(iii);
    %subplot(1,2,1)
    compass(k)
    pause(.1)
end
%subplot(1,2,2)
polar(angle(Br),abs(Br))
compass(Br)

