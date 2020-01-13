-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--  ch05/SimpleJSON.hs                                      :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: staticor@me.com <staticor@me.com>          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2020/01/13 07:59:58 by staticor@me       #+#    #+#             --
--   Updated: 2020/01/13 07:59:58 by staticor@me      ###   ########.fr       --
--                                                                          --
-- ************************************************************************** --


module SimpleJSON
(
    JValue(..)
    , getString
    , getInt
    , getDouble
    , getBool
    , getObject
    , getArray
    , isNull
) where

data JValue = JString String 
            | JNumber Double
            | JBool Bool
            | JNull
            | JObject [(String, JValue)]
            | JArray [JValue]
              deriving (Eq, Ord, Show)
            
getString :: JValue -> Maybe String
getString (JString s) = Just s
getString _           = Nothing


getInt (JNumber n) = Just (truncate n)
getInt _           = Nothing

getDouble (JNumber n) = Just n
getDouble _           = Nothing

getBool (JBool b) = Just b
getBool _         = Nothing

getObject (JObject o) = Just o
getObject _           = Nothing

getArray (JArray a)  = Just a
getArray  _          = Nothing

isNull v             = v == JNull




-- SimpleJSON.hi 是接口文件（interface file）
-- ghc 以机器可读的格式，将模块中导出名字的信息保存在这个文件。
-- 而 SimpleJSON.o 则是目标文件（object file），它包含了已生成的机器码。

