-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   Trouble.hs                                         :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: staticor@me.com <staticor@me.com>          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2020/01/13 08:44:51 by staticor@me       #+#    #+#             --
--   Updated: 2020/01/13 08:59:17 by staticor@me      ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

import Data.Char (toUpper)
upcaseFirst :: [Char] -> [Char]
upcaseFirst (c:cs) = toUpper c : cs  -- forget  ":cs"
upcaseFirst []     = []