macroScript MakeInstance category:"gugu" tooltip:"Make Object Instance"
Icon:#("Containers", 8)
(
try(destroyDialog makeInstanceRO )catch()

rollout makeInstanceRO "Make Instance" width:200 height:60 (
	pickbutton tempcam "Pick Obj" autodisplay:true
	checkbox instanceCheck "Instance?" pos:[70,30,0]
	
	on tempcam picked obj do ( 
		
		for i in $ do (
			picked = if instanceCheck.checked then instance obj else copy obj
			picked.position=i.position
			)
		delete $
		destroyDialog makeInstanceRO
	)
)
createDialog makeInstanceRO	
)