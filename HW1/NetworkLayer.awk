BEGIN{
delay[4]
avg = 0;
}

{
rtt = $4;
if($1 == "rtt"){
	split(rtt,delay,"/");
	avg = delay[2];
		    }
}

END{
printf("The avg for this site's round trip time is %f\n",avg);
}
