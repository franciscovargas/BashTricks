a=0;
s=$(xrandr | grep -P  -o "\w*(?=\sconnected)");

while [ 1 == 1 ]
do
	a=$((a + 1));
	if(($a%2==0)); then
		xrandr --output $s --rotate left
	else
		xrandr --output $s --rotate right
	fi
	sleep 0.5
done
