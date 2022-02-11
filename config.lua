Config = {
    LocationVehicule = {
        position = {
            vector3(-408.72, 1170.57, 325.81)
        },

        vehicule ={
            {Nom = "Scooter", Vehicule = "faggio", Price = 300},
            {Nom = "Panto", Vehicule = "panto", Price = 500},
            {Nom = "Blista", Vehicule = "blista", Price = 1000},
        }
    },


    PositionCamera = vector3(-388.12, 1194.97, 325.64), -- Position de la camera avant le spawn du véhicule
    SpawnVehicule = vector3(-387.41, 1198.40, 325.64), -- Position de ou va spawn le véhicule
    RotationSpawnVehicule = 108.82, -- Header du spawn véhicule (Rotation/Angle)

    blip = true, -- Affichage du blip (true = oui, false = non)

    BlipName = 'Location', -- Nom du blip
    BlipId = 225, -- Id du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipTaille = 0.7, -- Taille du blip
    BlipCouleur = 10, -- Couleur du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipRange = true, -- Garder le blip sur la map (true = désactiver, false = activé)


    Ped = true, -- Utiliser un ped pour spawn la place d'un marker

    PedType = 'cs_josh', -- le type du ped son "skin" : https://docs.fivem.net/docs/game-references/ped-models/
    PedPosition = vector3(-408.72, 1170.57, 324.81),  -- Position du ped pour ouvrir le menu
    PedRotation = 78.841, -- Header du spawn véhicule (Rotation/Angle)


    MarkerType = -1, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/ (-1 est une valeur négative donc pas de marker car utilisation du ped)
    MarkerSizeLargeur = 1.0, -- Largeur du marker
    MarkerSizeEpaisseur = 1.0, -- Épaisseur du marker
    MarkerSizeHauteur = 1.0, -- Hauteur du marker
    MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
    MarkerColorR = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorG = 0, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorB = 0, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
    MarkerSaute = false, -- Si le marker saute (true = oui, false = non)
    MarkerTourne = false, -- Si le marker tourne (true = oui, false = non)

    Text = "Appuyer sur ~b~[E] ~s~pour louer un ~b~véhicule ~s~!"
}