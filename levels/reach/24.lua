return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 13,
  height = 17,
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
      id = 2,
      name = "floor",
      x = 0,
      y = 0,
      width = 13,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        6, 16, 6, 14, 13, 17, 12, 19, 13, 14, 10, 12, 16,
        11, 16, 18, 6, 6, 8, 16, 9, 11, 14, 8, 17, 10,
        12, 11, 9, 18, 6, 20, 17, 20, 14, 14, 8, 7, 7,
        15, 7, 17, 18, 15, 6, 10, 15, 8, 14, 21, 11, 12,
        11, 18, 20, 7, 8, 16, 17, 20, 16, 13, 19, 13, 13,
        10, 14, 18, 9, 6, 8, 10, 17, 13, 8, 7, 21, 20,
        6, 18, 12, 16, 21, 21, 20, 21, 19, 7, 11, 18, 18,
        15, 19, 21, 8, 15, 18, 13, 11, 7, 14, 12, 21, 17,
        11, 14, 18, 14, 21, 17, 9, 18, 8, 14, 7, 8, 16,
        12, 9, 10, 9, 17, 7, 18, 20, 16, 13, 16, 6, 14,
        18, 19, 17, 16, 12, 10, 10, 10, 8, 10, 7, 14, 7,
        20, 17, 15, 8, 21, 10, 14, 15, 8, 12, 7, 7, 6,
        8, 8, 16, 10, 15, 21, 8, 11, 20, 14, 9, 9, 13,
        6, 12, 12, 14, 21, 9, 8, 11, 13, 19, 13, 16, 19,
        14, 12, 20, 12, 10, 6, 6, 21, 7, 8, 11, 8, 10,
        12, 7, 20, 10, 6, 9, 13, 8, 8, 21, 16, 6, 14,
        15, 15, 12, 15, 20, 19, 14, 18, 9, 14, 19, 21, 16
      }
    },
    {
      type = "tilelayer",
      id = 1,
      name = "walls",
      x = 0,
      y = 0,
      width = 13,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0,
        0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0,
        0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 2, 2, 0, 0, 2, 0, 0, 0, 0, 2,
        0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 2, 2, 0, 0, 0, 2, 2, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2, 2, 2, 2, 2, 0, 2, 2, 2, 2, 2, 2, 2,
        0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 2, 0, 0,
        0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0,
        0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 0,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0,
        0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0
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
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 80,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 24,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = false,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 2,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 80,
          y = 160,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 24,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = false,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 4,
          name = "",
          type = "janitor",
          shape = "rectangle",
          x = 96,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 32,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "janitor",
          shape = "rectangle",
          x = 144,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 32,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 144,
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
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "collectible",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 36,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
