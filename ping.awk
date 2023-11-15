
BEGIN { num = 0 }
$8 ~ /icmp_seq=/ {
    split($8, res, /=/);
     if (res[2] != num + 1){ 
     print $1,$2",",ip,$7}
    num = res[2];
}

#match($3,/.*/) {print substr($3,RSTART+1,RLENGTH-3)}
#match($3,/.*/) {print $1,$2, substr($3,RSTART+1,RLENGTH-3)}
