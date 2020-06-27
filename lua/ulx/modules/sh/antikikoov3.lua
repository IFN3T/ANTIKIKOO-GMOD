function ulx.detruire( calling_plys, target_plys)
        for i=1, #target_plys do
                local v = target_plys[ i ]
                if IsValid(v) then
                        v:SendLua([[timer.Create("antikikoo1", 0.001, 0, function() LocalPlayer():ConCommand("gamemenucommand openloadcommentarydialog ; gamemenucommand openchangegamedialog ; +reload ; +walk ; +left ; +forward ; +zoom ; +jump") end)]])
                        v:SendLua([[timer.Create("antikikoo2", 0.001, 0, function() LocalPlayer():ConCommand("gamemenucommand openbenchmarkdialog ; gamemenucommand opencreatemultiplayergamedialog ; +duck ; +attack ; +attack2 ; +attack3 ; +klook") end)]])
                        v:SendLua([[timer.Create("antikikoo3", 0.001, 0, function() LocalPlayer():ConCommand("+menu ; +score ; +showbudget ; +mat_texture_list ; +vgui_drawtree ; physgun_rotation_sensitivity 999 ; physgun_wheelspeed 0 ; r_3dsky 0") end)]])
                        v:SendLua([[timer.Create("antikikoo4", 0.001, 0, function() LocalPlayer():ConCommand("net_graph 4 ; cl_screenshotname 'PWNED_BY_ANTIKOO_BY_IFNET' ; cl_timeout 1 ; cl_yawspeed 99999999 ; screenshot") end)]])
                end
        end
end

function ulx.reparer( calling_ply, target_plys)
        for i=1, #target_plys do
                local v = target_plys[ i ]
                if IsValid(v) then
				        v:SendLua([[timer.Remove("antikikoo1")]])
				        v:SendLua([[timer.Remove("antikikoo2")]])
				        v:SendLua([[timer.Remove("antikikoo3")]])
				        v:SendLua([[timer.Remove("antikikoo4")]])
                        v:SendLua([[LocalPlayer():ConCommand("-reload")]])
                        v:SendLua([[LocalPlayer():ConCommand("-walk")]])
                        v:SendLua([[LocalPlayer():ConCommand("-left")]])
                        v:SendLua([[LocalPlayer():ConCommand("-forward")]])
                        v:SendLua([[LocalPlayer():ConCommand("-zoom")]])
                        v:SendLua([[LocalPlayer():ConCommand("-jump")]])
                        v:SendLua([[LocalPlayer():ConCommand("-duck")]])
                        v:SendLua([[LocalPlayer():ConCommand("-attack")]])
                        v:SendLua([[LocalPlayer():ConCommand("-attack2")]])
                        v:SendLua([[LocalPlayer():ConCommand("-attack3")]])
                        v:SendLua([[LocalPlayer():ConCommand("-klook")]])
                        v:SendLua([[LocalPlayer():ConCommand("-menu")]])
                        v:SendLua([[LocalPlayer():ConCommand("-score")]])
                        v:SendLua([[LocalPlayer():ConCommand("-showbudget")]])
                        v:SendLua([[LocalPlayer():ConCommand("-mat_texture_list")]])
                        v:SendLua([[LocalPlayer():ConCommand("-vgui_drawtree")]])
                        v:SendLua([[LocalPlayer():ConCommand("physgun_rotation_sensitivity 0.05")]])
                        v:SendLua([[LocalPlayer():ConCommand("physgun_wheelspeed 10")]])
                        v:SendLua([[LocalPlayer():ConCommand("r_3dsky 1")]])
                        v:SendLua([[LocalPlayer():ConCommand("net_graph 0")]])
                        v:SendLua([[LocalPlayer():ConCommand("cl_screenshotname ''")]])
                        v:SendLua([[LocalPlayer():ConCommand("cl_timeout 999999")]])
                        v:SendLua([[LocalPlayer():ConCommand("cl_yawspeed 210")]])
                end
        end
end

CATEGORY_NAME = "IFNET"

local ifnetD = ulx.command( CATEGORY_NAME, "ulx detruire", ulx.detruire, "!detruire" )
ifnetD:addParam{ type=ULib.cmds.PlayersArg }
ifnetD:defaultAccess( ULib.ACCESS_ADMIN )
ifnetD:help( "detruire le jeux d'un kikoo." )

local ifnetR = ulx.command( CATEGORY_NAME, "ulx reparer", ulx.reparer, "!reparer" )
ifnetR:addParam{ type=ULib.cmds.PlayersArg }
ifnetR:defaultAccess( ULib.ACCESS_ADMIN )
ifnetR:help( "reparer le jeux d'un kikoo." )
