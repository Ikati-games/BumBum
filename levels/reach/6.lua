return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 11,
  height = 14,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 5,
  properties = {},
  tilesets = {
    {
      name = "TileCollection",
      firstgid = 1,
      filename = "../../TiledFiles/TileCollection.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 0,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 1,
        height = 1
      },
      properties = {},
      terrains = {},
      tilecount = 26,
      tiles = {
        {
          id = 1,
          image = "../../sprites/wall/wall.png",
          width = 16,
          height = 16
        },
        {
          id = 2,
          image = "../../sprites/trashcan/trashcan.png",
          width = 16,
          height = 16
        },
        {
          id = 5,
          image = "../../sprites/background/bg_tile_1_2.png",
          width = 16,
          height = 16
        },
        {
          id = 6,
          image = "../../sprites/background/bg_tile_1_3.png",
          width = 16,
          height = 16
        },
        {
          id = 7,
          image = "../../sprites/background/bg_tile_1_4.png",
          width = 16,
          height = 16
        },
        {
          id = 8,
          image = "../../sprites/background/bg_tile_1_5.png",
          width = 16,
          height = 16
        },
        {
          id = 9,
          image = "../../sprites/background/bg_tile_1_6.png",
          width = 16,
          height = 16
        },
        {
          id = 10,
          image = "../../sprites/background/bg_tile_1_7.png",
          width = 16,
          height = 16
        },
        {
          id = 11,
          image = "../../sprites/background/bg_tile_1_8.png",
          width = 16,
          height = 16
        },
        {
          id = 12,
          image = "../../sprites/background/bg_tile_1_9.png",
          width = 16,
          height = 16
        },
        {
          id = 13,
          image = "../../sprites/background/bg_tile_1_10.png",
          width = 16,
          height = 16
        },
        {
          id = 14,
          image = "../../sprites/background/bg_tile_1_11.png",
          width = 16,
          height = 16
        },
        {
          id = 15,
          image = "../../sprites/background/bg_tile_1_12.png",
          width = 16,
          height = 16
        },
        {
          id = 16,
          image = "../../sprites/background/bg_tile_1_13.png",
          width = 16,
          height = 16
        },
        {
          id = 17,
          image = "../../sprites/background/bg_tile_1_14.png",
          width = 16,
          height = 16
        },
        {
          id = 18,
          image = "../../sprites/background/bg_tile_1_15.png",
          width = 16,
          height = 16
        },
        {
          id = 19,
          image = "../../sprites/background/bg_tile_1_16.png",
          width = 16,
          height = 16
        },
        {
          id = 20,
          image = "../../sprites/background/bg_tile_1_1.png",
          width = 16,
          height = 16
        },
        {
          id = 21,
          image = "../../sprites/trap/trap_closed.png",
          width = 16,
          height = 16
        },
        {
          id = 22,
          image = "../../sprites/trap/trap_horizontal.png",
          width = 16,
          height = 16
        },
        {
          id = 23,
          image = "../../sprites/trap/trap_vertical.png",
          width = 16,
          height = 16
        },
        {
          id = 24,
          image = "../../sprites/trap/trap_both.png",
          width = 16,
          height = 16
        },
        {
          id = 29,
          image = "../../sprites/change/change_f1.png",
          width = 16,
          height = 16,
          animation = {
            {
              tileid = 29,
              duration = 250
            },
            {
              tileid = 30,
              duration = 250
            }
          }
        },
        {
          id = 30,
          image = "../../sprites/change/change_f2.png",
          width = 16,
          height = 16
        },
        {
          id = 32,
          image = "../../sprites/bum/bum_f1.png",
          width = 16,
          height = 16,
          animation = {
            {
              tileid = 32,
              duration = 250
            },
            {
              tileid = 33,
              duration = 250
            }
          }
        },
        {
          id = 33,
          image = "../../sprites/bum/bum_f2.png",
          width = 16,
          height = 16
        }
      }
    },
    {
      name = "bum",
      firstgid = 35,
      filename = "../../TiledFiles/bum.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 2,
      image = "../../sprites/bum/bum.png",
      imagewidth = 32,
      imageheight = 16,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 250
            },
            {
              tileid = 1,
              duration = 250
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "floor",
      x = 0,
      y = 0,
      width = 11,
      height = 14,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        15, 19, 6, 14, 21, 14, 16, 7, 15, 14, 19,
        15, 20, 20, 16, 9, 18, 15, 17, 9, 13, 19,
        20, 10, 14, 8, 6, 8, 16, 18, 10, 17, 15,
        21, 21, 12, 6, 16, 13, 14, 17, 20, 9, 19,
        16, 10, 11, 8, 19, 11, 20, 20, 14, 15, 21,
        10, 21, 6, 13, 11, 9, 15, 20, 13, 9, 8,
        9, 12, 10, 13, 20, 8, 12, 9, 13, 10, 7,
        19, 17, 13, 7, 15, 21, 13, 18, 10, 19, 9,
        7, 19, 21, 19, 17, 18, 9, 21, 6, 16, 6,
        14, 15, 8, 16, 12, 19, 16, 19, 18, 15, 7,
        11, 13, 14, 21, 16, 8, 17, 13, 14, 13, 7,
        14, 12, 8, 12, 14, 8, 6, 18, 8, 12, 6,
        7, 12, 8, 17, 13, 8, 10, 13, 17, 19, 7,
        13, 17, 13, 17, 14, 9, 19, 18, 18, 15, 16
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "walls",
      x = 0,
      y = 0,
      width = 11,
      height = 14,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2, 2, 2, 0, 2, 2, 2, 2, 0, 2, 0,
        0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0,
        0, 2, 2, 2, 0, 2, 2, 2, 0, 2, 2,
        0, 0, 0, 0, 0, 2, 2, 2, 0, 2, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 2, 2, 0, 2, 0, 2, 2, 0, 2, 0,
        0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0,
        0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0,
        0, 2, 0, 0, 0, 0, 0, 2, 0, 2, 0,
        0, 0, 0, 0, 0, 0, 2, 2, 0, 2, 0,
        0, 0, 0, 0, 2, 0, 0, 2, 0, 2, 0,
        0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 2,
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 208,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 160,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
