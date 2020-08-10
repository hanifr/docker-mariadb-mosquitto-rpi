#! /bin/sh
while true;
do
CPU_MHZ=$(vcgencmd get_config arm_freq)
temp=$(vcgencmd measure_temp)
#temp=${temp:5:4}
echo $temp
echo $CPU_MHZ MHz

#mosquitto_pub -h localhost -t xeon_temp -m "$t"
#mosquitto_pub -h localhost -t xeon_speed -m "$CPU_MHZ"
sleep 5
done
