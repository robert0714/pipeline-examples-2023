          for i in  1 2 ;
          do
            echo $i;
            CURL_DATA='{  
                  "previewRun" : "false",  
                  "templateParameters": {    
                     "HELLO_WORLD": "'$i'"    
                   }    
                 }';
            echo "================================="      
            echo "$CURL_DATA" | jq '.';

            
          done