Akshat
#3122

Akshat — 30/07/2021
vro whats your name??
FreSauce — 30/07/2021
Shardul
Akshat — 30/07/2021
oh ok
FreSauce — 30/07/2021
lol
sorry for banning
Akshat — 30/07/2021
np
FreSauce — 30/07/2021
i thought it was galaxy pranking as usual
Akshat — 23/04/2022
.
 
BEGIN{
starttime=0
finishtime=0
flag=0
filesize=0
throughput=0
endtoenddelay=0
packetdeliver=0
packetsent=0
packetdeliveryratio=0
}
{
if($1=="r" && $4==2 && $3==4){
    packetdeliver+=1
  filesize+=$6
  if(flag==0){
   starttime=$2
   flag=1
  
  }
  finishtime=$2
}else if($1=="+" && $3==0){
packetsent+=1

}
}
END{
  endtoenddelay=finishtime-starttime
  throughput=(filesize*8)/endtoenddelay
  packetdeliveryratio=packetdeliver/packetsent
  pac
  printf("\n End to End delay is :%f" , endtoenddelay)
  printf("\n The throughput  is :%f" ,throughput)
  printf("\n Packet delivery ratio  is :%f" ,packetdeliveryratio)
  
}
Akshat — 23/04/2022
Image
Image
Image
Image
Image
Image
```
# This script is created by NSG2 beta1
# <http://wushoupong.googlepages.com/nsg>

#===================================
#     Simulation parameters setup
Expand
message.txt
4 KB
Akshat — 23/04/2022
BEGIN{
highest_packet_id = 0;    
}
{
    event = $1;
    time = $2;
    fromNode = $3;
    toNode = $4;
    packet_id = $12;
    if ( packet_id > highest_packet_id) 
    highest_packet_id = packet_id;
    if (start_time[packet_id]==0) 
    start_time[packet_id]=time;
    if (event != "d"){
        end_time[packet_id]=time;
    }
    else {
        end_time[packet_id] = -1;
    }
}
END{
   endtoendDelay ;
   for ( packet_id = 0; packet_id <= highest_packet_id; packet_id++  ){
       start = start_time[packet_id];
       end = end_time[packet_id];
       if (start < end)
       endtoendDelay+= end - start;
   }
   printf("\n Average end to end : %f",endtoendDelay)
}
endtoend
BEGIN{
packet_drop=0
packet_recv=0
packet_send=0
PDR=0
}
{
 if($1=="r" && $4=="5")
 {
 packet_recv++;
 }

 if($1=="d")
 {
 packet_drop++
 }
}
END{
   packet_send=packet_recv+packet_drop
   PDR=packet_recv/packet_send
    printf("\n TOtal packet Sent : %f",packet_send)
    printf("\n TOtal packet dropped : %f",packet_drop)
    printf("\n TOtal packet recieved : %f",packet_recv)
   printf("\n Packet Delivery Ratio : %f",PDR)
}
pdr
BEGIN{
stime=0
ftime=0
flag=0
fsize=0
throughput=0
latency=0
}
{
 if($1=="r" && $4=="5")
 {
 fsize+=$6
 if(flag==0)
 {
 stime=$2
 flag=1
 }
 ftime=$2
 }
 }
 END{
 latency=ftime-stime
 throughput=(fsize*8)/latency
#  printf("\n latency : %f",latency)
 printf("\n throughput : %f ", throughput)
 }
thrput
Image
Akshat — 23/04/2022
Attachment file type: archive
Archive.zip
2.10 KB
Akshat — 16/05/2022
vro  plmz gimme resources for full stack web dev
FreSauce — 16/05/2022
youtube net ninja channel
start there
do some basics
then do some big udemy courses by maximilian
Akshat — 16/05/2022
are the courses paid?
FreSauce — 16/05/2022
yes
google pirated courses
Akshat — 16/05/2022
how to get the paid one free
FreSauce — 16/05/2022
ask shubham, he has the links
Akshat — 16/05/2022
oki doki
Akshat — 19/05/2022
vro sih ke liye unity start kar du
Akshat — 27/05/2022
helpme bruh
FreSauce — 27/05/2022
?
Akshat — 27/05/2022
U habe int.. card
me also want nitro
Akshat — 02/06/2022
bro complete backend ka koi course ha
ya parts me karu
FreSauce — 02/06/2022
Take mohit's acc and do the course on udemy
Akshat — 02/06/2022
ok bro
Akshat — 07/07/2022
bro
yash shukla sended me a interview
for the dsa in java
FreSauce — 07/07/2022
less go
HOHOHOHOHOHO
Akshat — 07/07/2022
U guys can help me??
what did they ask
FreSauce — 07/07/2022
FreSauce — 07/07/2022
nope
Akshat — 07/07/2022
bro U making me scare
FreSauce — 07/07/2022
zyzz was rejected
so
Akshat — 07/07/2022
he told that its in java
FreSauce — 07/07/2022
yea, dsa tough
Akshat — 07/07/2022
and I dont know java
I do in c++
FreSauce — 07/07/2022
when is the interview?
Akshat — 07/07/2022
today
4-5pm
FreSauce — 07/07/2022
bruh
Akshat — 07/07/2022
he just send  me the link
FreSauce — 07/07/2022
u know java right?
like syntax?
Akshat — 07/07/2022
ya
ya
FreSauce — 07/07/2022
yea, then good luck
lol maybe they will ask linked list or tree
Akshat — 07/07/2022
ok me seeing those things
FreSauce — 07/07/2022
just see all data structure implementations
also try to follow oops paradigm when creating data structures
might have good impression
Akshat — 07/07/2022
hmm
is there a way i can fool then and U guys can help me
FreSauce — 07/07/2022
dont
if caught, he might tell yash
and boom
all future opportunities fucked up
Akshat — 07/07/2022
ok
btw yash will also be there in meet
FreSauce — 07/07/2022
lmao
sad
Akshat — 07/07/2022
and one guy name akash
FreSauce — 07/07/2022
yea, ik akash
he oversees the dsa part
Akshat — 07/07/2022
ohh
FreSauce — 07/07/2022
of newton 
Akshat — 07/07/2022
hmm
Akshat — 09/07/2022
bro is that akash active in your newton community
FreSauce — 09/07/2022
Yep
Akshat — 09/07/2022
I asked yash about my selcection
he told me that he asked akash and he havent replied yet
FreSauce — 09/07/2022
Head of dsa section
Akshat — 09/07/2022
but he asked kind of cp problem only
a
level
FreSauce — 09/07/2022
Hmm
Akshat — 09/07/2022
he dosnt asked me datastructure
FreSauce — 09/07/2022
What's the difference
Akshat — 09/07/2022
lagta ha ye opportunity bhi fucked up ho gai
Image
Akshat — 09/07/2022
do that gfg self paced course 
FreSauce — 09/07/2022
why
also send course 
i aint paying for anything dsa
Akshat — 09/07/2022
https://practice.geeksforgeeks.org/courses/dsa-self-paced?source=google&medium=cpc&device=c&keyword=gfg&matchtype=b&campaignid=9546568041&adgroup=97966155295
Courses | Data Structures and Algorithms - Self Paced
Most popular course on DSA trusted by over 75,000 students! Built with years of experience by industry experts and gives you a complete package of video lectures, practice problems, quizzes, discussion forums and contests. Start Today!
Courses | Data Structures and Algorithms - Self Paced
shubham bola tha uspe torent link ha
to download
FreSauce — 09/07/2022
hmmmm
Akshat — 09/07/2022
this will be more than enough
FreSauce — 09/07/2022
hmm 3900re
for entire dsa
ig mohit bought it right?
Akshat — 09/07/2022
I also have it
still I am not able to complete
FreSauce — 09/07/2022
GIVE THE LOGIN
Akshat — 09/07/2022
bro cant that my main id  from which every thing is connected
ask mohit ig he has made the account from the alt id
U can download na It only provides U videos
FreSauce — 09/07/2022
https://www.linkedin.com/in/anshul-garg-07/
FreSauce — 14/07/2022
Image
https://jobs.hp.com/jobdetails/14932495/college-intern-bangalore-in/?utm_source=College_Internship_unstop&utm_medium=listing&utm_campaign=unstop
HP Careers
College Intern - HP Careers
Akshat — 14/07/2022
bhai resume
FreSauce — 14/07/2022
Attachment file type: acrobat
shardul_2.pdf
33.85 KB
Akshat — 14/07/2022
Attachment file type: acrobat
Akshat_Resume.pdf
62.64 KB
Akshat — 14/07/2022
Image
Akshat — 15/07/2022
ref mila fre
FreSauce — 15/07/2022
Congrats
Akshat — 15/07/2022
are bhai terako mila kya
ye puch raha hu
FreSauce — 15/07/2022
Nope
Akshat — 15/07/2022
merako kab mila
FreSauce — 15/07/2022
Where was the question mark
Retard
Akshat — 15/07/2022
solly
poor english I got C
FreSauce — 15/07/2022
Pathetic
Akshat — 15/07/2022
💀
FreSauce — 15/07/2022
Oi
Got the referral
What about you?
Akshat — 15/07/2022
haa
FreSauce — 15/07/2022
Nice
Akshat — 15/07/2022
Resume ka template to bata bro
kise banaya tha
FreSauce — 15/07/2022
Bruh
Akshat — 15/07/2022
website
FreSauce — 15/07/2022
Couldn't find the site
Akshat — 15/07/2022
hey how to improve resume score
I got 43
help
Akshat — 15/07/2022
Improved it to 68
Image
Akshat — 18/07/2022
bruh gibe my role back
FreSauce — 18/07/2022
what?
Akshat — 18/07/2022
Image
FreSauce — 18/07/2022
u have noq right?
Akshat — 18/07/2022
I cant make roles
dont know why
FreSauce — 18/07/2022
ur problem
Akshat — 18/07/2022
gimme noob coder role
FreSauce — 18/07/2022
u got the admin role
there is no noob coder role
Akshat — 18/07/2022
then help
FreSauce — 18/07/2022
only the pro coder role
Akshat — 18/07/2022
then make one
for me
I take my roles very seriously
FreSauce — 18/07/2022
u getting a pro coder role now
Akshat — 18/07/2022
bruh
please I am on sabbatical
FreSauce — 18/07/2022
no
Akshat — 18/07/2022
Akshat — 18/07/2022
any reply till now for Msoft appli
?
FreSauce — 18/07/2022
bruh just forget that you applied for microsoft 
Akshat — 18/07/2022
I am grinding day and night cant forget
Image
btw U teach me dbms
FreSauce — 18/07/2022
oh i didnt know it shows here that u are referred
Image
Akshat — 18/07/2022
hmm
﻿
```
# This script is created by NSG2 beta1
# <http://wushoupong.googlepages.com/nsg>

#===================================
#     Simulation parameters setup
#===================================
set val(stop)   10.0                         ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns [new Simulator]
$ns rtproto DV
#Open the NS trace file
set tracefile [open out.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open out.nam w]
$ns namtrace-all $namfile

#===================================
#        Nodes Definition        
#===================================
#Create 11 nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]
set n6 [$ns node]
set n7 [$ns node]
set n8 [$ns node]
set n9 [$ns node]
set n10 [$ns node]

#===================================
#        Links Definition        
#===================================
#Createlinks between nodes
$ns duplex-link $n0 $n1 10.0Mb 10ms DropTail
$ns queue-limit $n0 $n1 20
$ns duplex-link $n1 $n2 10.0Mb 10ms DropTail
$ns queue-limit $n1 $n2 20
$ns duplex-link $n2 $n3 10.0Mb 10ms DropTail
$ns queue-limit $n2 $n3 20
$ns duplex-link $n1 $n4 10.0Mb 10ms DropTail
$ns queue-limit $n1 $n4 20
$ns duplex-link $n3 $n4 10.0Mb 10ms DropTail
$ns queue-limit $n3 $n4 20
$ns duplex-link $n5 $n4 10.0Mb 10ms DropTail
$ns queue-limit $n5 $n4 20
$ns duplex-link $n5 $n6 10.0Mb 10ms DropTail
$ns queue-limit $n5 $n6 20
$ns duplex-link $n6 $n7 10.0Mb 10ms DropTail
$ns queue-limit $n6 $n7 20
$ns duplex-link $n9 $n6 10.0Mb 10ms DropTail
$ns queue-limit $n9 $n6 20
$ns duplex-link $n10 $n8 10.0Mb 10ms DropTail
$ns queue-limit $n10 $n8 20
$ns duplex-link $n9 $n10 10.0Mb 10ms DropTail
$ns queue-limit $n9 $n10 20
$ns duplex-link $n8 $n5 10.0Mb 10ms DropTail
$ns queue-limit $n8 $n5 20

#Give node position (for NAM)


#===================================
#        Agents Definition        
#===================================
#Setup a TCP connection
set tcp0 [new Agent/TCP]
$ns attach-agent $n0 $tcp0
set sink1 [new Agent/TCPSink]
$ns attach-agent $n5 $sink1
$ns connect $tcp0 $sink1
$tcp0 set packetSize_ 1500


#===================================
#        Applications Definition        
#===================================
#Setup a FTP Application over TCP connection
set ftp0 [new Application/FTP]
$ftp0 attach-agent $tcp0
$ns at 0.5 "$ftp0 start"
$ns at 5.0 "$ftp0 stop"
$ns rtmodel-at 1.0 down $n1 $n4
$ns rtmodel-at 1.5 up $n1 $n4

#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam out.nam &
    exec awk -f endtoend.awk out.tr &
    exec awk -f pdr.awk out.tr &
    exec awk -f thrput.awk out.tr &
 
    exit 0
}

$ns at $val(stop) "finish"

$ns run

```
message.txt
4 KB
