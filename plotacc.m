clear all;

load 1;
TH=0:0.01:1;
tpr=zeros(length(TH),2);
fpr=zeros(length(TH),2);
for t=1:length(TH)
    for i=1:N
        for j=1:N
            if j==i
                continue;
            end
            if abs(max(C(:,i,j)))>=TH(t) && (j==1 && i==2)
                tpr(t,1)=tpr(t,1)+1;
            end
            if abs(max(C(:,i,j)))>=TH(t) && ~(j==1 && i==2)
                fpr(t,1)=fpr(t,1)+1;
            end
            if abs(PPC(i,j))>=TH(t) && (j==1 && i==2)
                tpr(t,2)=tpr(t,2)+1;
            end
            if abs(PPC(i,j))>=TH(t) && ~(j==1 && i==2)
                fpr(t,2)=fpr(t,2)+1;
            end
        end
    end
end
acc=tpr+N*(N-1)-1-fpr;
tpr=tpr/1;
fpr=fpr/(N*(N-1)-1);
ac=acc;
acc=acc/(N*(N-1));


load 2;
TH=0:0.01:1;
tpr=zeros(length(TH),2);
fpr=zeros(length(TH),2);
for t=1:length(TH)
    for i=1:N
        for j=1:N
            if j==i
                continue;
            end
            if abs(max(C(:,i,j)))>=TH(t) && ((j==1 && i==3)||(j==3 && i==2))
                tpr(t,1)=tpr(t,1)+1;
            end
            if abs(max(C(:,i,j)))>=TH(t) && ~((j==1 && i==3)||(j==3 && i==2))
                fpr(t,1)=fpr(t,1)+1;
            end
            if abs(PPC(i,j))>=TH(t) && ((j==1 && i==3)||(j==3 && i==2))
                tpr(t,2)=tpr(t,2)+1;
            end
            if abs(PPC(i,j))>=TH(t) && ~((j==1 && i==3)||(j==3 && i==2))
                fpr(t,2)=fpr(t,2)+1;
            end
        end
    end
end
acc=tpr+N*(N-1)-2-fpr;
tpr=tpr/2;
fpr=fpr/(N*(N-1)-2);
ac=ac+acc;
acc=acc/(N*(N-1));


load 3;
TH=0:0.01:1;
tpr=zeros(length(TH),2);
fpr=zeros(length(TH),2);
for t=1:length(TH)
    for i=1:N
        for j=1:N
            if j==i
                continue;
            end
            if abs(max(C(:,i,j)))>=TH(t) && ((j==1 && i==3)||(j==3 && i==2)||(j==2 && i==1))
                tpr(t,1)=tpr(t,1)+1;
            end
            if abs(max(C(:,i,j)))>=TH(t) && ~((j==1 && i==3)||(j==3 && i==2)||(j==2 && i==1))
                fpr(t,1)=fpr(t,1)+1;
            end
            if abs(PPC(i,j))>=TH(t) && ((j==1 && i==3)||(j==3 && i==2)||(j==2 && i==1))
                tpr(t,2)=tpr(t,2)+1;
            end
            if abs(PPC(i,j))>=TH(t) && ~((j==1 && i==3)||(j==3 && i==2)||(j==2 && i==1))
                fpr(t,2)=fpr(t,2)+1;
            end
        end
    end
end
acc=tpr+N*(N-1)-3-fpr;
tpr=tpr/3;
fpr=fpr/(N*(N-1)-3);
ac=ac+acc;
acc=acc/(N*(N-1));


ac=ac/(N*(N-1))/3;
figure;
plot(ac(:,1),'linewidth',2);
hold on;
plot(ac(:,2),'linewidth',2);
set(gca,'FontSize',15);
xlabel('Threshold');
ylabel('Accuracy');
legend('Mutual cross mapping','Partial cross mapping','location','southeast');
axis([1 95 0.3 1]);
set(gca,'XTick',[1,11,21,31,41,51,61,71,81,91,101]);
set(gca,'XTicklabel',{'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
set(gca,'YTick',[0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]);
set(gca,'YTicklabel',{'30%','40%','50%','60%','70%','80%','90%','100%'});

axes('position',[0.67,0.36,0.21,0.24]);
plot(ac(:,1),'linewidth',2);
hold on;
plot(ac(:,2),'linewidth',2);
set(gca,'FontSize',10);
axis([95 100 0.6 1]);
set(gca,'XTick',[95,97,99]);
set(gca,'XTicklabel',{'0.94','0.96','0.98'});
set(gca,'YTick',[0.6,0.7,0.8,0.9,1]);
set(gca,'YTicklabel',{'60%','70%','80%','90%','100%'});