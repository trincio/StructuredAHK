/*
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
       ¿¡¡¿_                                                                                   §g      ___      ___      __   __     ___                        
    _¶¶ÑÑÑÑÑ¶   ¶¶                                  ¶¶                                         ¶¶      ¶¶¶_     ¶#Ë     w#¶   ¶¶   _g¶Ñ¯                        
    ¶#È        g¶¶ggg_ ¡g_gg¶`\g_    ¡g    _ggggg_ g¶¶ggg  g¡    \g_  \g_¡ggr  ¡ggg§_    _gg¶g_¶¶     ¶¶~¶¶     ¶#Ë     w#¶   ¶¶ _g¶Ñ¯                          
    ú¶¶g¡__    ^¶¶ÎÎÎ¨ ¶#¶ÅÎÊ ¶#£    ¶¶   ¶¶ÑÊ¯ÎÅF Î¶¶ÎÎÎ  #¶    ¶#£  ¶#¶ÑÊÎ°¡¶¶Ê¯ÎÑ¶ý  ¡¶¶Ê¯ã¶¶¶    w¶Å J¶¶    ¶#Ç¡¡¡¡¡Ñ#¶   ¶¶g¶Ñ¯                            
     ¯ÕÑÑ¶¶¶g   ¶¶     ¶#¯    ¶#£    ¶¶  q#Å        ¶¶     #¶    ¶#£  ¶#Ê    ¶¶¿¿¿¿¿¶¶  ¶¶     ¶¶   _¶¶   Ñ¶ç   ¶#ÑÑÑÑÑÑÑ#¶   ¶¶¶¶§                             
           Ñ#¶  ¶¶     ¶#     ¶#£    ¶¶  ¶#p        ¶¶     #¶    ¶#£  ¶#£    ¶¶ÑÑÑÑÑÑÑ  ¶¶     ¶¶   ¶#¶¶¶¶¶#¶_  ¶#Ë     w#¶   ¶¶ Ô¶¶y                           
    \_     g#Å  ¶¶     ¶#     J#§   ]¶¶  ¯¶¶_    _  ¶¶     ¶¶_  _¶#£  ¶#£    Ñ¶g     _  ¶¶ç   g¶¶  ¶#Å¯¯¯¯¯¯¶¶  ¶#Ë     w#¶   ¶¶   Ñ¶¶[                         
    áÑ¶¶¶¶¶¶Å   °Ñ¶¶¶L ¶¶      Õ¶¶¶¶Ñ¶¶   ¯Ñ¶¶¶¶¶£  ZÑ¶¶¶¹ ^Ñ¶¶¶¶Ñ¶F  0¶F     ãÑ¶¶¶¶¶¶   Ñ¶¶¶¶Ñ¶¶ ,¶¶       Ñ¶£ Ñ¶Ë     J¶¶   ¶¶    ¯Ñ¶¶_          0   ¡eª¶¿    
                                                                                                                                               _¡+ ¶  ¶    ¶    
            __________________                                                                                                     g    _¡_  ¡£¯   ¶ wp   p~    
            ¶################¶                                                                                             _¡a   _ ¡ ¬@F¯¯¶ _Ñ     ¶  Ñwe°      
            ¶################¶                                                                                         ¬P°Ñ¯  wp°¯ ¶ ~Ñ   ¶  ¶øwæ¹ ^            
            ¶################¶                                                                                            ¶~  m£   ¶ _Ë   Ó                     
            ¶#######ÑÑÑÑÑÑÑÑÑÈ   ¶###########¶                                                          p      ¡   ¶      ¶~  q£   Å ¨¯                         
            ¶#######~ gggggggggg_¶###########¶                                                          ¶¡*P¶¿ Ñp 0¯      ¶~  ¨¨                                
            ¶#######~ ##########£¶###########¶                                                          ¶   _¶  Å@È                                             
            ¶#######~ ##########£¶###########¶                                                          ¶  _¶¯   ¶                                              
            ¶#######~ ##########£¶###########¶                                                          ¶*º^   ¡Æ¯                                              
            ¶#######~ ##########£¶###########¶                                                                                                                  
            ¯¯¯¯¯¯¯¯  ##########£JÑÑÑÑÑÑÑÑÑÑÑ¶                                                                                                                  
                      ##########¶¶¶¶¶¶¶¶¶¶¶                                                                                                                     
                      ####################¶                                                                                                                     
                      ####################¶                                                                                                                     
                      ####################¶                                                                                                                     
                      ####################¶                                                                                                                     
                      ÅÅÅÅÅÅÅÅÅÅÅÅÅÅÅÅÅÅÅÅÎ                                                                                                                     
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
A set of small functions to improve readability and effectiveness of the AHK code.

Target: produce better sourcecode for teams

_________________________________________________
ControlExists(currentcontrol)

Simple function to check if a control exists or not.

When use it: often it happens that some event fired on the GUI intstantiates a new control.
When the event fires again, you should check if the control exists, to avoid to instantiate it again (and getting an error)

How to use it:

- pass the current control variable (without the initial "v") and check the result.
- ControlExists() returns true (1) if the control exists, and false (0) if doesn't exist.
- if you have a named GUI, pass the GUI name and the control variable separated by ":"

set the ControlExists__TEST:=true in the line below to check how it works

*/

ControlExists__TEST:=false


ControlExists(currentcontrol)
{
	
	identifiers := StrSplit(currentcontrol,  ":")  ; Gets the gui name if existing
 
	variablename:=""
	guiname:="Name"
	
	if ( identifiers.MaxIndex() == 2 ){	
		variablename:=identifiers[2]
		guiname:=identifiers[1]	  ":Name" 
	}	
	else{ 
		variablename:=identifiers[1]
	}
	
 
	GuiControlGet, objectexists, %guiname% , %variablename%
 
	
	if (objectexists == variablename){
		return true
	}else {
		return false
	}

}
 
 
if (ControlExists__TEST)
{
	gui CURRENTGUI_NAME:  add, listview, y250 x10 w850 vResultsLVALLInventoredInfo
	exists := controlexists("CURRENTGUI_NAME:ResultsLVALLInventoredInfo")
	msgbox, %exists%
}