-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   PrettyJSON.hs                                      :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: staticor@me.com <staticor@me.com>          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2020/01/13 08:59:30 by staticor@me       #+#    #+#             --
--   Updated: 2020/01/13 09:05:37 by staticor@me      ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

import SimpleJSON 




data Doc = ToBeDefined
           deriving (Show)

string :: String ->Doc
string str = undefined

text :: String -> Doc
text str = undefined

double :: Double -> Doc
double num = undefined

renderJValue :: JValue -> Doc
renderJValue ( JBool True)  = text "true"
renderJValue ( JBool False) = text "false"
renderJValue ( JNull)       = text "null"
renderJValue ( JNumber num) = double num 
renderJValue ( JString str) = string str 

