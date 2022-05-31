#!/bin/bash
i=0
          count=0
          counter=$((count-3))
          filename=null
          rm -f ~/c237TT/ACTIVITY15.log;
          if  ! locate ~/c237TT/FixGen/logs
          then
              echo "The folder logs does not exists" >> ACTIVITY15.log;
              mkdir ~/c237TT/FixGen;
              mkdir ~/c237TT/FixGen/logs;
          elif locate ~/c237TT/FixGen/logs
            then
              echo "The folder logs does  exists" >> ACTIVITY15.log;
              (cd ~/c237TT/FixGen/logs; ~/fixGenerator.sh &)
              echo "We are running the script fixGenerator.sh" >> ACTIVITY15.log;
          fi
          count=$(ls ~/*.log -tr | wc -l)
          echo "Number of files with .log is" $count >> ACTIVITY15.log;
          counter=$((count-3))
          while  [ $i -lt $counter ]
          do
            i=$((i+1))
            filename=$(ls  ~/*.log -tr | head -n $i | tail -n 1)
            echo "Number of files with .log is" $count >> ACTIVITY15.log;
            gzip $filename
            echo "Name of the file that will be comressed" $filename >> ACTIVITY15.log;
          done
          # crontab -e then 0 6 * * 1-5 ~/c237TT/TarekToumi.Scripting-Activity15.sh >/dev/null 2>&1

