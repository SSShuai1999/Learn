import qualified Data.List as List
import qualified Data.Map as Map
import qualified Data.Function as Function
import qualified Data.Char as Char
import qualified Data.Set as Set

import qualified Geometry.Cube as CubeG
import qualified Geometry.Cuboid as CuboidG
import qualified Geometry.Sphere as SphereG

-- searchAll :: (Eq a) => [a] -> [a] -> Bool
-- searchAll list1 list2 = 
--     let lens = length list1 
--     in foldl (\acc n -> if take lens n == list1 then True else acc) False (tails list2)

formList' :: (Ord k) => [(k, v)] -> Map.Map k v
formList' = foldr (\(k, v) acc -> Map.insert k v acc) Map.empty

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith (\nb1 nb2 -> nb1 ++ ", " ++ nb2) xs

phoneBookToMap2 :: (Ord k) => [(k, a)] -> Map.Map k [a]
phoneBookToMap2 xs = Map.fromListWith (++) $ map (\(k, v)  -> (k, [v])) xs




























