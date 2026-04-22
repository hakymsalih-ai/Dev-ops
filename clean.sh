#!/bin/bash
read -p "wellcome Mr.$(whoami) do you want clean all of this? (y/n):" answer

if  [ "$answer" == "y" ]; then
echo "Wellcom Mr.$(whoami)   this is clean shaw😁😁🤙🏿"
for file in *.log;do
 echo "I found this :$file" 
if [[ "$file" == error*.log ]];then
echo "I found this M.F file deleted now pleace ⛔⛔⛔⛔" 
rm "$file"
echo "Done ✅  error file is over now!"
fi
done
else   
echo "Ok Mr.$(whoami) then see Next day..❤❤🇸🇩 "
fi
