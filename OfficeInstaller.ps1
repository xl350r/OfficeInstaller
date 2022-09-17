# OfficeInstaller.ps1

function choice {
    Switch (read-host ">") {
        "32" {.\setup.exe setup.exe /configure ./32config.xml}
        "64" {.\setup.exe /configure  ./64config.xml}
        "Egg" {egg; choice;}
        default {write-host "choose either 32 or 64!"; choice};
    }
}

function egg () {
write-host "
   ###   
  #   #  
 #     # 
 #     # 
 #     # 
  #   #  
   ###   
         
"
}

function main {
write-host "
                                         ###                                                        
  ####  ###### ###### #  ####  ######     #  #    #  ####  #####   ##   #      #      ###### #####  
 #    # #      #      # #    # #          #  ##   # #        #    #  #  #      #      #      #    # 
 #    # #####  #####  # #      #####      #  # #  #  ####    #   #    # #      #      #####  #    # 
 #    # #      #      # #      #          #  #  # #      #   #   ###### #      #      #      #####  
 #    # #      #      # #    # #          #  #   ## #    #   #   #    # #      #      #      #   #  
  ####  #      #      #  ####  ######    ### #    #  ####    #   #    # ###### ###### ###### #    # 

Author: Daniel Hoberecht
Choose 32 or 64 Bit!!                                                                                                    
"

choice
}

main
