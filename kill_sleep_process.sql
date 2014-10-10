select concat('KILL ',id,';') from information_schema.processlist where Command='Sleep' into outfile '/tmp/process.txt';
source /tmp/process.txt;
