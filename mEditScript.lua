function requestLODClient()
	triggerServerEvent("requestLODClient", resourceRoot)
end

addEventHandler("onClientResourceStart", resourceRoot, requestLODClient)

function setLODclient(lodTbl)
	for i, model in ipair(lodTbl) do
		engineSetModLODDistance(model, 1000)
		end
	end
	
	addEventHandler("setLODclient", true)
	
	function applyBreakableState()
		for k, obj, in pair(getElementsByType("object", resourceRoot)) do
			local breakable = getElementsByType(obj, "breakable")
			if breakable then
				setObjectBreakable(obj, breakable == true)
				
			end
		end
	end
	
	addEventHandler("onClientResourceStart", resourceRoot, applyBreakableState)