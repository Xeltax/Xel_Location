Config = {    
    Voiture = { -- Config pour les voitures motocross et jet ski arrive   
        position = vector3(-256, -1022.5, 28.7), -- Position du menu location

        SpawnPed = true, -- Utilisé un Ped ou non

        PosPed = vector3(-256, -1022.5, 28.7), --Posistion du Ped mettre la même que celle du menu

        PedRotation = 240.0, -- Le Heading du PED son  angle (vers ou il regarde)

        ModelPed = "a_m_m_prolhost_01", -- Le model du Ped que vous pouvez trouvé ici : https://docs.fivem.net/docs/game-references/ped-models/

        HelpNotification = 'Appuyez sur ~INPUT_CONTEXT~ pour voir les locations !', -- Notification pour ouvrir le menu

        Vehicule = { --  les différent véhicule que vous souhaitez changer ce qu'il y a entre " " et le prix
            {nom = "Panto", model = GetHashKey("panto"), prix = 10},
            {nom = "Kalahari", model = GetHashKey("kalahari"), prix = 10},
            {nom = "Blista", model = GetHashKey("blista"), prix = 10},
        },

        SpawnPoint = vector3(-263.5, -1028.2, 28.4), -- point de spawn du véhicule

        SpawnRotation = 240.0 -- angle de spawn du véhicule
    },

    -- Configuration des Blips
    BlipName = 'Location', -- Nom du blip
    BlipId = 467, -- Id du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipTaille = 1.0, -- Taille du blip
    BlipCouleur = 5, -- Couleur du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipRange = true, -- Garder le blip sur la map (true = désactiver, false = activé)
}