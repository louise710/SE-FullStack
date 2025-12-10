<!-- Sample code for making con for iot dev -->
<?php
$mqttCommand = 'mosquitto_pub -h 10.10.50.114 -t main/client/AC -m "m"';
$mqttCommand1 = 'mosquitto_pub -h 10.10.50.114 -t main/switch/lights -m "m"';
$mqttCommand2 = 'mosquitto_pub -h 10.10.50.114 -t main/web/stat/AC -m "m"';
$mqttCommand3 = 'mosquitto_pub -h 10.10.50.114 -t main/dev/status -m "m"';



exec($mqttCommand, $output, $returnCode);
exec($mqttCommand1, $output1, $returnCode1);
exec($mqttCommand2, $output2, $returnCode2);
exec($mqttCommand3, $output3, $returnCode3);

if ($returnCode === 0 && $returnCode1 === 0 && $returnCode2 === 0 && $returnCode3 === 0) {
    echo 'MQTT commands executed successfully.';
} else {
    echo 'Error executing MQTT commands.';
}
?>
