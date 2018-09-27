[y,f_s]=audioread('bird.wav');   
X=fft(y);
k=[0:length(X)-1];
k(1)=1;
kinv=1./k;
vsdl=(kinv*(X-repmat(X(1,:),1)))./sum(X(2:end,:),1);
vrms=sqrt(mean(X.^2));
vsd2=vsdl.*vrms;
vsd=sum(vsd2)./sum(vrms);
disp(vsd);
