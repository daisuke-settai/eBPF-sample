lsf:
	gcc linux_socket_filtering.c -o lsf

lsf-tcpdump:
	gcc -DTCPDUMP linux_socket_filtering.c  -o lsf-tcpdump

lsf-pcap:
	gcc linux_socket_filtering.c -DPCAP -lpcap -o lsf-pcap

seccomp:
	gcc seccomp.c -o seccomp-prohibit-getpid -DBLACK

seccom:
	gcc seccomp.c -o seccomp-permit-getpid

clean:
	rm -f lsf lsf-tcpdump lsf-pcap seccomp-prohibit-getpid seccomp-permit-getpid
