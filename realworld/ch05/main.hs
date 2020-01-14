-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   main.hs                                            :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: staticor@me.com <staticor@me.com>          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2020/01/13 08:31:44 by staticor@me       #+#    #+#             --
--   Updated: 2020/01/13 08:34:03 by staticor@me      ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --


module Main (main) where 

import SimpleJSON


main = print (JObject [("foo", JNumber 1), 
                       ("bar", JBool False)])
                       