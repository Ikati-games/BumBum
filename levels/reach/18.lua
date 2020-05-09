return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 12,
  height = 12,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 24,
  properties = {},
  tilesets = {
    {
      name = "bum",
      firstgid = 1,
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
      name = "TileCollection",
      firstgid = 3,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "floor",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        20, 18, 10, 18, 18, 18, 13, 16, 22, 14, 21, 10,
        8, 15, 8, 11, 21, 10, 14, 18, 16, 21, 20, 10,
        13, 11, 10, 21, 18, 22, 8, 22, 12, 17, 8, 18,
        10, 18, 13, 21, 11, 10, 12, 12, 10, 17, 11, 15,
        13, 18, 13, 9, 22, 17, 10, 13, 23, 14, 15, 13,
        11, 22, 8, 11, 10, 14, 15, 10, 20, 20, 17, 12,
        17, 21, 18, 8, 14, 13, 13, 20, 16, 23, 20, 8,
        12, 8, 17, 10, 23, 22, 14, 12, 11, 13, 12, 11,
        22, 12, 23, 16, 17, 14, 9, 19, 17, 12, 8, 23,
        8, 9, 23, 13, 21, 23, 21, 10, 20, 10, 16, 19,
        23, 10, 9, 18, 8, 23, 11, 16, 23, 8, 23, 19,
        20, 23, 12, 15, 15, 22, 18, 20, 14, 19, 20, 8
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "walls",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {}
        },
        {
          id = 1,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 144,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 64,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 5,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 64,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 6,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 96,
          y = 144,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 7,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 144,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 8,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 10,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 160,
          y = 80,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 11,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 160,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 12,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 16,
          y = 80,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 13,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 48,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 14,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 80,
          y = 160,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 15,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 112,
          y = 176,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 17,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 112,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 18,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 112,
          y = 80,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 19,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 48,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 20,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 144,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 21,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 32,
          y = 144,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 22,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 144,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 23,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 128,
          y = 176,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        }
      }
    }
  }
}
