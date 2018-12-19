module Policies.Stubs.Building (sBuilding) where

import           CityGML.Types

sBuilding i = Building (sFeature i)  (Just $ Height "#m" 100) Nothing Nothing Nothing Nothing  l0f l0r l1s Nothing [] []
sFeature i = Feature (GML (Just i) [] Nothing) Nothing

l0f = Just (FootPrint fp)
l0r = Just (RoofEdge  re)
l1s = Just (BldgLod1Solid (Solid cs []))

fp = MultiSurface
    [
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85010.059 447216.119 0.000"
              ,  Coord "85065.266 447162.431 0.000"
              ,  Coord "85069.605 447169.206 0.000"
              ,  Coord "85067.298 447170.684 0.000"
              ,  Coord "85069.019 447173.370 0.000"
              ,  Coord "85068.943 447173.419 0.000"
              ,  Coord "85070.556 447175.936 0.000"
              ,  Coord "85017.737 447228.101 0.000"
              ,  Coord "85010.059 447216.119 0.000"
              ]) []
    ]

re = MultiSurface
    [
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85010.059 447216.119 70.000"
              ,  Coord "85065.266 447162.431 70.000"
              ,  Coord "85069.605 447169.206 70.000"
              ,  Coord "85067.298 447170.684 70.000"
              ,  Coord "85069.019 447173.370 70.000"
              ,  Coord "85068.943 447173.419 70.000"
              ,  Coord "85070.556 447175.936 70.000"
              ,  Coord "85017.737 447228.101 70.000"
              ,  Coord "85010.059 447216.119 70.000"
              ]) []
    ]

cs = CompositeSurface
    [
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85017.737 447228.101 0.000"
              ,  Coord "85070.556 447175.936 0.000"
              ,  Coord "85068.943 447173.419 0.000"
              ,  Coord "85069.019 447173.370 0.000"
              ,  Coord "85067.298 447170.684 0.000"
              ,  Coord "85069.605 447169.206 0.000"
              ,  Coord "85065.266 447162.431 0.000"
              ,  Coord "85010.059 447216.119 0.000"
              ,  Coord "85017.737 447228.101 0.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85010.059 447216.119 70.000"
              ,  Coord "85065.266 447162.431 70.000"
              ,  Coord "85069.605 447169.206 70.000"
              ,  Coord "85067.298 447170.684 70.000"
              ,  Coord "85069.019 447173.370 70.000"
              ,  Coord "85068.943 447173.419 70.000"
              ,  Coord "85070.556 447175.936 70.000"
              ,  Coord "85017.737 447228.101 70.000"
              ,  Coord "85010.059 447216.119 70.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85070.556 447175.936 0.000"
              ,  Coord "85017.737 447228.101 0.000"
              ,  Coord "85017.737 447228.101 70.000"
              ,  Coord "85070.556 447175.936 70.000"
              ,  Coord "85070.556 447175.936 0.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85068.943 447173.419 0.000"
              ,  Coord "85070.556 447175.936 0.000"
              ,  Coord "85070.556 447175.936 70.000"
              ,  Coord "85068.943 447173.419 70.000"
              ,  Coord "85068.943 447173.419 0.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85069.019 447173.370 0.000"
              ,  Coord "85068.943 447173.419 0.000"
              ,  Coord "85068.943 447173.419 70.000"
              ,  Coord "85069.019 447173.370 70.000"
              ,  Coord "85069.019 447173.370 0.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85067.298 447170.684 0.000"
              ,  Coord "85069.019 447173.370 0.000"
              ,  Coord "85069.019 447173.370 70.000"
              ,  Coord "85067.298 447170.684 70.000"
              ,  Coord "85067.298 447170.684 0.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85069.605 447169.206 0.000"
              ,  Coord "85067.298 447170.684 0.000"
              ,  Coord "85067.298 447170.684 70.000"
              ,  Coord "85069.605 447169.206 70.000"
              ,  Coord "85069.605 447169.206 0.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85065.266 447162.431 0.000"
              ,  Coord "85069.605 447169.206 0.000"
              ,  Coord "85069.605 447169.206 70.000"
              ,  Coord "85065.266 447162.431 70.000"
              ,  Coord "85065.266 447162.431 0.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85010.059 447216.119 0.000"
              ,  Coord "85065.266 447162.431 0.000"
              ,  Coord "85065.266 447162.431 70.000"
              ,  Coord "85010.059 447216.119 70.000"
              ,  Coord "85010.059 447216.119 0.000"
              ]
            ) []
        ,
        Polygon (Feature (GML Nothing [] Nothing) Nothing)
            (LinearRing
              [  Coord "85017.737 447228.101 0.000"
              ,  Coord "85010.059 447216.119 0.000"
              ,  Coord "85010.059 447216.119 70.000"
              ,  Coord "85017.737 447228.101 70.000"
              ,  Coord "85017.737 447228.101 0.000"
              ]
            ) []
    ]