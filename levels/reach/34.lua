return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 15,
  height = 23,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 10,
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
      tilecount = 28,
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
          id = 25,
          image = "../../sprites/plate/plate.png",
          width = 16,
          height = 16
        },
        {
          id = 26,
          image = "../../sprites/plate/plate_pressed.png",
          width = 16,
          height = 16
        },
        {
          id = 27,
          image = "../../sprites/gate/gate_horizontal.png",
          width = 16,
          height = 16
        },
        {
          id = 28,
          image = "../../sprites/gate/gate_horizontal_open.png",
          width = 16,
          height = 16
        },
        {
          id = 29,
          image = "../../sprites/gate/gate_vertical.png",
          width = 16,
          height = 16
        },
        {
          id = 30,
          image = "../../sprites/gate/gate_vertical_open.png",
          width = 16,
          height = 16
        }
      }
    },
    {
      name = "janitor",
      firstgid = 32,
      filename = "../../TiledFiles/janitor.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 2,
      image = "../../sprites/janitor/janitor.png",
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
    },
    {
      name = "bum",
      firstgid = 34,
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
    },
    {
      name = "change",
      firstgid = 36,
      filename = "../../TiledFiles/change.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 2,
      image = "../../sprites/change/change.png",
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
      width = 15,
      height = 23,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        15, 10, 20, 18, 15, 8, 10, 21, 17, 13, 16, 19, 14, 15, 14,
        15, 9, 6, 7, 18, 18, 18, 10, 8, 9, 10, 6, 13, 16, 16,
        10, 10, 18, 13, 17, 10, 17, 18, 7, 6, 9, 9, 13, 20, 14,
        18, 19, 19, 16, 17, 7, 18, 7, 14, 10, 19, 15, 15, 13, 21,
        15, 12, 21, 18, 9, 13, 18, 20, 19, 10, 20, 17, 18, 18, 11,
        19, 7, 6, 15, 13, 10, 21, 20, 21, 7, 9, 19, 14, 7, 20,
        11, 6, 13, 6, 10, 11, 6, 14, 20, 21, 8, 21, 21, 14, 17,
        18, 18, 17, 13, 20, 7, 19, 18, 20, 6, 16, 13, 16, 11, 21,
        19, 8, 13, 18, 19, 18, 15, 16, 17, 17, 18, 13, 15, 11, 6,
        7, 6, 20, 20, 13, 15, 6, 13, 21, 7, 21, 12, 11, 10, 10,
        18, 9, 9, 19, 13, 10, 15, 9, 17, 20, 11, 10, 11, 11, 16,
        19, 13, 20, 19, 18, 6, 16, 20, 10, 20, 9, 10, 8, 15, 19,
        16, 8, 11, 6, 6, 13, 17, 14, 13, 18, 16, 8, 10, 14, 15,
        6, 21, 13, 9, 16, 12, 13, 21, 8, 19, 16, 17, 13, 21, 12,
        15, 16, 6, 16, 12, 17, 14, 8, 15, 9, 19, 15, 20, 6, 6,
        6, 21, 10, 8, 19, 16, 7, 7, 8, 18, 9, 10, 15, 20, 9,
        14, 8, 6, 19, 9, 21, 8, 16, 11, 18, 15, 15, 7, 6, 14,
        12, 13, 9, 18, 12, 12, 16, 19, 17, 6, 14, 8, 20, 15, 21,
        15, 8, 13, 7, 15, 12, 19, 12, 9, 19, 17, 8, 18, 16, 12,
        11, 9, 8, 10, 9, 15, 18, 16, 14, 12, 9, 20, 17, 15, 7,
        19, 21, 21, 16, 12, 14, 18, 9, 11, 18, 10, 11, 20, 13, 15,
        13, 19, 9, 21, 8, 11, 7, 18, 12, 13, 8, 6, 16, 15, 15,
        7, 11, 20, 11, 12, 15, 14, 18, 18, 6, 20, 8, 21, 7, 13
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "walls",
      x = 0,
      y = 0,
      width = 15,
      height = 23,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 2, 2, 2, 2, 2, 0, 0, 0, 2, 2, 2, 2, 2, 0,
        2, 2, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2,
        2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 2,
        2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2,
        0, 2, 2, 0, 2, 2, 0, 0, 0, 2, 2, 0, 2, 2, 0,
        0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0,
        0, 2, 2, 0, 2, 2, 0, 0, 0, 2, 2, 0, 2, 2, 0,
        2, 0, 0, 0, 2, 2, 2, 0, 2, 0, 0, 0, 0, 2, 2,
        2, 0, 0, 0, 0, 2, 2, 0, 2, 2, 2, 0, 0, 0, 2,
        2, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2, 0, 2,
        0, 2, 2, 0, 2, 2, 0, 0, 0, 2, 2, 0, 2, 2, 0,
        0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0,
        0, 2, 2, 0, 2, 2, 0, 0, 0, 2, 2, 0, 2, 2, 0,
        2, 2, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 2, 0, 2, 2, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2,
        2, 0, 2, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 2, 2, 0, 2, 0, 2, 0, 0, 0, 2,
        0, 2, 2, 2, 2, 2, 0, 0, 0, 2, 2, 2, 2, 2, 0
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
          id = 1,
          name = "collectible",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 192,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 36,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 288,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 34,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
