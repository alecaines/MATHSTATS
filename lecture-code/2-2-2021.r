b <- c(.430, .266, .567, .531, .707, .716)
print(b)
s <- c(.415, .238, .390, .410, .605, .609)
print(s)

d <- b - s
print(d)
std <- sd(d)
print(std)
t.test(b,s, paired=TRUE)
print("===================================")
print("============One sided===============")
print("===================================")
t.test(b,s, paired=TRUE, alternative="greater") #one-sided
print("===================================")
print("========Changing conf interval=====")
print("===================================")
t.test(b,s, paired=TRUE, alternative="greater", conf.level=0.99) #changing conf interval
print("===================================")
print("==========Pooled t-test============")
print("===================================")
t.test(b,s, paired=TRUE, alternative="greater", conf.level=0.99, var.equal=TRUE) #pooled t-test
print("===================================")
print("==============Unpaired=============")
print("===================================")
t.test(b,s, paired=FALSE) #very diff results


