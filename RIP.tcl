
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
set n4 [c$ns node]
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
$ns duplex-link $n1 $n8 10.0Mb 10ms DropTail
$ns queue-limit $n1 $n8 20
$ns duplex-link $n3 $n5 10.0Mb 10ms DropTail
$ns queue-limit $n3 $n5 20
$ns duplex-link $n0 $n2 10.0Mb 10ms DropTail
$ns queue-limit $n0 $n2 20
$ns duplex-link $n7 $n5 10.0Mb 10ms DropTail
$ns queue-limit $n7 $n5 20


#Give node position (for NAM)


#===================================
#        Agents Definition        
#===================================
#Setup a TCP connection
set tcp0 [new Agent/TCP]
$ns attach-agent $n0 $tcp0
set sink1 [new Agent/TCPSink]
$ns attach-agent $n9 $sink1
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
#$ns rtmodel-at 1.0 down $n1 $n8
#$ns rtmodel-at 1.5 up $n1 $n8


$ns rtmodel-at 0.1 down $n1 $n8
$ns rtmodel-at 0.1 down $n10 $n8
$ns rtmodel-at 0.1 down $n5 $n8



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
