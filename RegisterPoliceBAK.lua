local QBCore = exports['qb-core']:GetCoreObject()
          
RegisterNetEvent("qb-policejob:setjob_sv", function()
    print("Server Event Called")
    local src = source
    local source = source
    Player = QBCore.Functions.GetPlayer(src)

    print("SRC: " .. tostring(src))
    --local xPlayer = QBCore.Functions.GetPlayer(src)
    --local license = xPlayer.PlayerData.license

   --print(license)
      -- local result = MySQL.query('SELECT `citizenid` FROM `players` WHERE `job` LIKE \'%police%\' AND `license` = ?', { license })
      -- if result == nil then
       --    print("No Cop characters")


       print("DOC? :" .. tostring(IsPlayerAceAllowed(src,"doc-dept")))
        if(IsPlayerAceAllowed(src,"doc-dept")) then
            print(IsPlayerAceAllowed(src,"doc-dept"))
            Player.Functions.SetJob("police", 400)
            TriggerClientEvent('QBCore:Notify', src, "You have been hired as Starlight DOC!", "success")
            return
        end

        if IsPlayerAceAllowed(src, "pdjob") then
            print("Allowed to have PD job.")

            --SASP Ranks
            if(IsPlayerAceAllowed(src,"sasp-dept")) then
                print(IsPlayerAceAllowed(src,"sasp-dept"))
                --Decision Code
                if(IsPlayerAceAllowed(src,"sasp-rank-com")) then
                    Player.Functions.SetJob("police", 111)
                    TriggerClientEvent('QBCore:Notify', src, "You have been hired as SASP Commissioner", "success")
                    return

                    elseif(IsPlayerAceAllowed(src,"sasp-rank-depcomm")) then
                        Player.Functions.SetJob("police", 110)
                        TriggerClientEvent('QBCore:Notify', src, "You have been hired as SASP Deputy Commissioner", "success")
                        return

                    elseif(IsPlayerAceAllowed(src,"sasp-rank-assitcomm")) then
                        Player.Functions.SetJob("police", 109)
                        TriggerClientEvent('QBCore:Notify', src, "You have been hired as SASP Assistant Commissioner", "success")
                        return

                    elseif(IsPlayerAceAllowed(src,"sasp-rank-chief")) then
                        Player.Functions.SetJob("police", 108)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Chief!", "success")
                        return
                    
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-major")) then
                        Player.Functions.SetJob("police", 107)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Major!", "success")
                        return
                    
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-capt")) then
                        Player.Functions.SetJob("police", 106)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Captain!", "success")
                        return
                    
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-lt")) then
                        Player.Functions.SetJob("police", 105)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Lieutenant!", "success")
                        return
                    
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-sgt")) then
                        Player.Functions.SetJob("police", 104)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Sergeant!", "success")
                        return
                
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-corp")) then
                        Player.Functions.SetJob("police", 103)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Corporal!", "success")
                        return
                    
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-msttrooper")) then
                        Player.Functions.SetJob("police", 102)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP rank Mst. Trooper!", "success")
                        return
                    
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-trooper")) then
                        Player.Functions.SetJob("police", 101)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Trooper!", "success")
                        return
                    
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-probtrooper")) then
                        Player.Functions.SetJob("police", 100)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Prob. Trooper!", "success")  
                        return   
                    elseif(IsPlayerAceAllowed(source,"sasp-rank-trooperfc")) then
                        Player.Functions.SetJob("police", 112)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as SASP Trooper First Class!", "success")  
                        return        
                end
             end
                --BCSO Ranks
            if(IsPlayerAceAllowed(source,"bcso-dept")) then
                    --Decision Code
                    if(IsPlayerAceAllowed(source,"bcso-rank-sheriff")) then
                        Player.Functions.SetJob("police", 200)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Sheriff!", "success")
                        return

                        elseif(IsPlayerAceAllowed(source,"bcso-rank-undersheriff")) then
                            Player.Functions.SetJob("police", 201)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Undersheriff!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"bcso-rank-depsheriff")) then
                            Player.Functions.SetJob("police", 202)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Deputy Sheriff!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"bcso-rank-colonel")) then
                            Player.Functions.SetJob("police", 203)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Colonel!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"bcso-rank-commander")) then
                            Player.Functions.SetJob("police", 204)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Commander!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"bcso-rank-captain")) then
                            Player.Functions.SetJob("police", 205)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Captain!", "success")
                            return

                        elseif(IsPlayerAceAllowed(source,"bcso-rank-lt")) then
                            Player.Functions.SetJob("police", 206)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Lieutenant!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"bcso-rank-msgt")) then
                            Player.Functions.SetJob("police", 207)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Master Sergeant!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"bcso-rank-sgt")) then
                            Player.Functions.SetJob("police", 208)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Sergeant!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"bcso-rank-corp")) then
                            Player.Functions.SetJob("police", 209)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Corporal!", "success")  
                            return

                        elseif(IsPlayerAceAllowed(source,"bcso-rank-deputy2")) then
                            Player.Functions.SetJob("police", 210)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Deputy II!", "success")  
                            return

                        elseif(IsPlayerAceAllowed(source,"bcso-rank-deputy")) then
                            Player.Functions.SetJob("police", 211)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Deputy!", "success")  
                            return

                        elseif(IsPlayerAceAllowed(source,"bcso-rank-cadet")) then
                            Player.Functions.SetJob("police", 212)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as BCSO Cadet!", "success")  
                            return
                    end
                    
                end
                     --LSPD Ranks
            if(IsPlayerAceAllowed(source,"lspd-dept")) then
                    --Decision Code
                    if(IsPlayerAceAllowed(source,"lspd-rank-cop")) then
                        Player.Functions.SetJob("police", 300)
                        TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD rank Chief Of Police!", "success")
                        return

                        elseif(IsPlayerAceAllowed(source,"lspd-rank-acop")) then
                            Player.Functions.SetJob("police", 301)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD rank Assistant Chief Of Police!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"lspd-rank-dcop")) then
                            Player.Functions.SetJob("police", 302)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD rank Deputy Chief Of Police!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"lspd-rank-commander")) then
                            Player.Functions.SetJob("police", 303)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Commander!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"lspd-rank-captain")) then
                            Player.Functions.SetJob("police", 304)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Captain!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"lspd-rank-lt")) then
                            Player.Functions.SetJob("police", 305)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Lieutenant!", "success")
                            return

                        elseif(IsPlayerAceAllowed(source,"lspd-rank-msgt")) then
                            Player.Functions.SetJob("police", 306)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Master Sergeant!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"lspd-rank-sgt")) then
                            Player.Functions.SetJob("police", 307)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Sergeant!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"lspd-rank-corp")) then
                            Player.Functions.SetJob("police", 308)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Corporal!", "success")
                            return
                        
                        elseif(IsPlayerAceAllowed(source,"lspd-rank-pofc")) then
                            Player.Functions.SetJob("police", 309)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Police Officer First Class!", "success")  
                            return

                        elseif(IsPlayerAceAllowed(source,"lspd-rank-po2")) then
                            Player.Functions.SetJob("police", 310)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Officer II!", "success")  
                            return

                        elseif(IsPlayerAceAllowed(source,"lspd-rank-po")) then
                            Player.Functions.SetJob("police", 311)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Police Officer!", "success")  
                            return

                        elseif(IsPlayerAceAllowed(source,"lspd-rank-cadet")) then
                            Player.Functions.SetJob("police", 312)
                            TriggerClientEvent('QBCore:Notify', source, "You have been hired as LSPD Probationary Deputy!", "success")  
                            return 
                    end      
                end       
            end       
       --[[else
            print("Missing rank roles. Has pdjob ace.")
            TriggerClientEvent('QBCore:Notify', source, "You must apply to be a police officer! \n You may be missing your department role.", "error")
        end]]
  --  else
  --      TriggerClientEvent('QBCore:Notify', src, "You may only have one police character", "error")
end)
