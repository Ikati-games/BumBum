return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 11,
  height = 13,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 8,
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
      name = "bum",
      firstgid = 32,
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
      name = "janitor",
      firstgid = 34,
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
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        17, 7, 9, 17, 7, 15, 14, 15, 13, 10, 10,
        9, 8, 15, 8, 12, 18, 8, 19, 9, 17, 21,
        9, 13, 16, 21, 11, 9, 14, 8, 21, 20, 17,
        7, 10, 20, 19, 7, 10, 20, 21, 16, 14, 11,
        13, 13, 9, 19, 15, 8, 16, 20, 13, 9, 16,
        16, 12, 15, 7, 14, 12, 11, 11, 20, 8, 19,
        20, 13, 13, 12, 7, 8, 8, 18, 7, 11, 9,
        15, 18, 19, 19, 18, 21, 6, 14, 16, 21, 17,
        10, 16, 9, 20, 18, 16, 21, 17, 17, 21, 13,
        10, 16, 14, 17, 20, 19, 14, 6, 8, 19, 20,
        8, 16, 7, 12, 15, 19, 21, 9, 12, 18, 17,
        17, 11, 11, 6, 10, 20, 12, 14, 13, 8, 18,
        10, 7, 10, 18, 6, 11, 9, 6, 7, 17, 18
      }
    },
    {
      type = "tilelayer",
      id = 3,
      name = "walls",
      x = 0,
      y = 0,
      width = 11,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 0, 0, 2, 2, 2, 0, 0, 2, 2,
        2, 2, 0, 0, 2, 2, 2, 0, 0, 2, 2,
        2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 2, 0, 0, 0, 0, 0, 0, 0, 2, 2,
        2, 2, 0, 0, 0, 0, 0, 0, 0, 2, 2,
        2, 2, 2, 0, 0, 0, 0, 0, 2, 2, 2,
        2, 2, 2, 2, 0, 0, 0, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 0, 0, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    },
    {
      type = "objectgroup",
      id = 2,
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
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 192,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 32,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "janitor",
          shape = "rectangle",
          x = 128,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 34,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "janitor",
          shape = "rectangle",
          x = 96,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 34,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "janitor",
          shape = "rectangle",
          x = 48,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 34,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 96,
          y = 192,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 24,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = false,
            ["isVerticalAllowed"] = true
          }
        }
      }
    }
  }
}
