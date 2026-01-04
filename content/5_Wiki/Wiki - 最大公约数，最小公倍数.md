#wiki/year2023 #wiki/month01 


```
gcd(a,b):
BEGIN
   a1<-|a|
   b1<-|b|
   while(a%b!=0)
   BEGIN
        temp<-a1%b1
        a1<-b1
        b1<-temp
    END
    temp<-b1
    RETURN temp
END

lcm(a,b):
BEGIN
    a1<-|a|
   b1<-|b|
   all<-a1*b1
   while(a%b!=0)
   BEGIN
        temp<-a1%b1
        a1<-b1
        b1<-temp
    END
    temp<-all/b1
    RETURN temp
END
```
