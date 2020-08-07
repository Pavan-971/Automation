val=$(wc -l < plugins.txt)

while read line;
do
        var=$(echo $line|tr -d '\n')
        echo $line
        java -jar jenkins-cli.jar -s http://18.219.212.63:8080 -auth pavan:pavan@1 install-plugin  $var
done < plugins.txt;
