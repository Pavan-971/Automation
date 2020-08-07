content=$(tail -n +2 plugin.txt)
for line in $content; do
         var=$(echo $line|tr -d '\n')

         java -jar jenkins-cli.jar -s http://18.219.212.63:8080 -auth pavan:pavan@1 install-plugin  $var
done < plugin.txt;
