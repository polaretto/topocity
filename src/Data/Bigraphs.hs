{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE TypeSynonymInstances #-}

module Data.Bigraphs where

import           Data.Tree.NTree.TypeDefs
import           Libs.Basics
import           Libs.NTreeExtras

-- Bigraphs
type BiGraph     = (PlaceGraph, LinkGraph)
type LinkGraph   = [BiGraphEdge]

type BiGraphNode = (UID, Type)
type PlaceGraph  = NTree BiGraphNode

type BiGraphEdge = (UID, (LinkType, [BiGraphNode]))
type AbsHypergraph = NTree (BiGraphNode, [BiGraphEdge])


mergeBiGraphs :: BiGraph -> AbsHypergraph
mergeBiGraphs (p, l) = fmap (augmentBiNode l) p

augmentBiNode :: LinkGraph -> BiGraphNode -> (BiGraphNode, [BiGraphEdge])
augmentBiNode l n = (n, subGraph n l)



-- TESTING
l1 = [
                NTree ("2", "Building") (l2_1 ++ l2_2),
                NTree ("3", "Building") [],
                NTree ("4", "Building") [],
                NTree ("5", "Building") []
            ]

-- building 1 description
l2_1   = [NTree ("6", "Door") []]
l2_2 =   [
                NTree ("7", "Window") [],
                NTree ("8", "Window") []
            ]

link_ =
    [
        (1, "Touch", [("2", "Building"),("3", "Building")]),
        (2, "Touch", [("2", "Building"),("4", "Building")]),
        (2, "Touch", [("4", "Building"),("5", "Building")])
    ]

place =  NTree ("1", "City") l1

bg = (place, link_)
