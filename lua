-- script 
local player = game.Players.LocalPlayer
local char = player.Character
local tool
for i,v in player:GetDescendants() do
    if v.Name == "SyncAPI" then
        tool = v.Parent
    end
end
for i,v in game.ReplicatedStorage:GetDescendants() do
    if v.Name == "SyncAPI" then
        tool = v.Parent
    end
end
remote = tool.SyncAPI.ServerEndpoint
function _(args)
    remote:InvokeServer(unpack(args))
end
function SetCollision(part,boolean)
    local args = {
        [1] = "SyncCollision",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["CanCollide"] = boolean
            }
        }
    }
    _(args)
end
function SetAnchor(boolean,part)
    local args = {
        [1] = "SyncAnchor",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Anchored"] = boolean
            }
        }
    }
    _(args)
end
function CreatePart(cf,parent)
    local args = {
        [1] = "CreatePart",
        [2] = "Normal",
        [3] = cf,
        [4] = parent
    }
    _(args)
end
function DestroyPart(part)
    local args = {
        [1] = "Remove",
        [2] = {
            [1] = part
        }
    }
    _(args)
end
function MovePart(part,cf)
    local args = {
        [1] = "SyncMove",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["CFrame"] = cf
            }
        }
    }
    _(args)
end
function Resize(part,size,cf)
    local args = {
        [1] = "SyncResize",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["CFrame"] = cf,
                ["Size"] = size
            }
        }
    }
    _(args)
end
function AddMesh(part)
    local args = {
        [1] = "CreateMeshes",
        [2] = {
            [1] = {
                ["Part"] = part
            }
        }
    }
    _(args)
end

function SetMesh(part,meshid)
    local args = {
        [1] = "SyncMesh",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["MeshId"] = "rbxassetid://"..meshid
            }
        }
    }
    _(args)
end
function SetTexture(part, texid)
    local args = {
        [1] = "SyncMesh",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["TextureId"] = "rbxassetid://"..texid
            }
        }
    }
    _(args)
end
function SetName(part, stringg)
    local args = {
        [1] = "SetName",
        [2] = {
            [1] = part
        },
        [3] = stringg
    }

    _(args)
end
function MeshResize(part,size)
    local args = {
        [1] = "SyncMesh",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Scale"] = size
            }
        }
    }
    _(args)
end
function Weld(part1, part2,lead)
    local args = {
        [1] = "CreateWelds",
        [2] = {
            [1] = part1,
            [2] = part2
        },
        [3] = lead
    }
    _(args)

end
function SetLocked(part,boolean)
    local args = {
        [1] = "SetLocked",
        [2] = {
            [1] = part
        },
        [3] = boolean
    }
    _(args)
end
function SetTrans(part,int)
    local args = {
        [1] = "SyncMaterial",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Transparency"] = int
            }
        }
    }
    _(args)
end
function CreateSpotlight(part)
    local args = {
        [1] = "CreateLights",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["LightType"] = "SpotLight"
            }
        }
    }
    _(args)
end
function SyncLighting(part,brightness)
    local args = {
        [1] = "SyncLighting",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["LightType"] = "SpotLight",
                ["Brightness"] = brightness
            }
        }
    }
    _(args)
end
function Color(part,color)
    local args = {
        [1] = "SyncColor",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Color"] = color,
                ["UnionColoring"] = false
            }
        }
    }
    _(args)
end
function SpawnDecal(part,side)
    local args = {
        [1] = "CreateTextures",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Face"] = side,
                ["TextureType"] = "Decal"
            }
        }
    }

    _(args)
end
function AddDecal(part,asset,side)
    local args = {
        [1] = "SyncTexture",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Face"] = side,
                ["TextureType"] = "Decal",
                ["Texture"] = "rbxassetid://".. asset
            }
        }
    }
    _(args)
end

task.spawn(function()
    local ok, err = pcall(function()
        local pt = remote:InvokeServer("CreatePart", "Normal", CFrame.new(0, 0, 0), workspace)
        if typeof(pt) ~= "Instance" then
            local allParts = workspace:GetChildren()
            pt = allParts[#allParts] 
        end
        local size = Vector3.new(4, 14, 18)
        local cframe = CFrame.new(-146.857, 11, -79.232) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
        Resize(pt, size, cframe)
        SetTrans(pt, 1)
		  SetCollision(pt, false)
        SpawnDecal(pt, Enum.NormalId.Right)
        AddDecal(pt, 118861144981939, Enum.NormalId.Right)
    end)
end)
task.spawn(function()
    local ok, err = pcall(function()
        local pt = remote:InvokeServer("CreatePart", "Normal", CFrame.new(0, 0, 0), workspace)
        if typeof(pt) ~= "Instance" then
            local allParts = workspace:GetChildren()
            pt = allParts[#allParts] 
        end
        local size = Vector3.new(4, 14, 18)
        local cframe = CFrame.new(-146.857, 11, -87.232) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
        Resize(pt, size, cframe)
        SetTrans(pt, 1)
		  SetCollision(pt, false)
        SpawnDecal(pt, Enum.NormalId.Right)
        AddDecal(pt, 118861144981939, Enum.NormalId.Right)
    end)
end)
task.spawn(function()
    local ok, err = pcall(function()
        local pt = remote:InvokeServer("CreatePart", "Normal", CFrame.new(0, 0, 0), workspace)
        if typeof(pt) ~= "Instance" then
            local allParts = workspace:GetChildren()
            pt = allParts[#allParts] 
        end
        local size = Vector3.new(4, 14, 18)
        local cframe = CFrame.new(-96.857, 11, -79.232) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
        Resize(pt, size, cframe)
		  SetCollision(pt, false)
        SpawnDecal(pt, Enum.NormalId.Left)
        AddDecal(pt, 83086867475271, Enum.NormalId.Left)
    end)
end)
task.spawn(function()
    local ok, err = pcall(function()
        local pt = remote:InvokeServer("CreatePart", "Normal", CFrame.new(0, 0, 0), workspace)
        if typeof(pt) ~= "Instance" then
            local allParts = workspace:GetChildren()
            pt = allParts[#allParts] 
        end
        local size = Vector3.new(4, 14, 18)
        local cframe = CFrame.new(-78.857, 11, -79.232) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
        Resize(pt, size, cframe)
		  SetCollision(pt, false)
        SpawnDecal(pt, Enum.NormalId.Left)
        AddDecal(pt, 83086867475271, Enum.NormalId.Left)
    end)
end)
task.spawn(function()
    local ok, err = pcall(function()
        local pt = remote:InvokeServer("CreatePart", "Normal", CFrame.new(0, 0, 0), workspace)
        if typeof(pt) ~= "Instance" then
            local allParts = workspace:GetChildren()
            pt = allParts[#allParts] 
        end
        local size = Vector3.new(4, 14, 18)
        local cframe = CFrame.new(-60.857, 11, -79.232) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
        Resize(pt, size, cframe)
		  SetCollision(pt, false)
        SpawnDecal(pt, Enum.NormalId.Left)
        AddDecal(pt, 83086867475271, Enum.NormalId.Left)
    end)
end)
task.spawn(function()
    local ok, err = pcall(function()
        local pt = remote:InvokeServer("CreatePart", "Normal", CFrame.new(0, 0, 0), workspace)
        if typeof(pt) ~= "Instance" then
            local allParts = workspace:GetChildren()
            pt = allParts[#allParts] 
        end
        local cframe = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
		  AddMesh(pt)
		  SetMesh(pt,"111891702759441")
		  SetTexture(pt,83086867475271)
		  MeshResize(pt,Vector3.new(99999,99999,99999))
        SetTrans(pt, 0.1)
        SetLocked(pt,true)
    end)
end)
function SetImage(part, imageUrl, side)
    local args = {
        [1] = "SyncTexture",
        [2] = {
            [1] = {
                ["Part"] = part,
                ["Face"] = side or Enum.NormalId.Top,
                ["TextureType"] = "Decal",
                ["Texture"] = imageUrl
            }
        }
    }
    _(args)
end
local function spawnWithImage()
    local character = game.Players.LocalPlayer.Character
    local footPos = CFrame.new(-125.5, 0.1, -49)
    local imageLink = "rbxasset://textures/SpawnLocation.png"
    local spawna = remote:InvokeServer("CreatePart", "Spawn", footPos, workspace)
    Resize(spawna, Vector3.new(20, 10, 20), footPos)
	 SetLocked(spawna,true)
    SpawnDecal(spawna, Enum.NormalId.Top)
    SetImage(spawna, imageLink, Enum.NormalId.Top)
end
spawnWithImage()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommandSilent
RequestCommand:InvokeServer(";res all")
