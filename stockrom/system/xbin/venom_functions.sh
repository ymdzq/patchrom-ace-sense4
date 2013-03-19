#!/system/bin/sh
DB=/data/data/com.android.providers.settings/databases/settings.db

read_sys_setting()
{
  PARAM=$1
  DEFVALUE=$2
  if [ ! -e $DB ]; then
	echo "$DEFVALUE";
  else
  	VALUE=`sqlite3 $DB "select value FROM system where name LIKE '$PARAM'"`;
  	if [ "$VALUE" = "" ]; then
        	echo "$DEFVALUE";
  	else
		echo "$VALUE";
	fi;
  fi;
}
