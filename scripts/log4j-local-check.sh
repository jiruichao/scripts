#/bin/sh

log4j_result=`ls -la /proc/*/fd/ 2>/dev/null|grep -E "log4j-core"|cut -d '>' -f2|sort -u|grep -v rc2.jar` 2>/dev/null
if echo $log4j_result|grep 'log4j-';then
    echo "find system have log4j vuln jar"
else
	echo "check jar include log4j vuln jar"
	log4j_in_jar=`ls -la /proc/*/fd/ 2>/dev/null|grep jar$|grep -v -E "log4j-core"|cut -d '>' -f2|cut -d ' ' -f2|sort -u|xargs grep -E "log4j-core" 2>/dev/null`
	if echo $log4j_in_jar|grep 'log4j-';then
    	echo "find system have log4j vuln jar"
	else
    	echo "there have no log4j vuln jar"
	fi
    
fi

