return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 7,
  height = 8,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 29,
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
      name = "TileCollection",
      firstgid = 32,
      filename = "../../../../TileCollection.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 0,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 0,
      tiles = {}
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "floor",
      x = 0,
      y = 0,
      width = 7,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        7, 13, 10, 9, 15, 15, 12,
        20, 10, 16, 13, 16, 19, 21,
        17, 19, 16, 14, 12, 7, 14,
        21, 18, 11, 21, 18, 13, 9,
        12, 12, 16, 17, 20, 6, 21,
        13, 17, 7, 10, 21, 17, 16,
        8, 6, 11, 10, 16, 11, 17,
        11, 9, 12, 8, 8, 19, 18
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "walls",
      x = 0,
      y = 0,
      width = 7,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 2, 0,
        0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 2, 0, 0
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
          id = 25,
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 80,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 32,
          visible = true,
          properties = {}
        },
        {
          id = 1,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 0,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 2,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 64,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 3,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 80,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 4,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 96,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
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
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
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
          x = 48,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
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
          x = 0,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 9,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 64,
          y = 96,
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
          id = 10,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 16,
          y = 80,
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
          id = 11,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 80,
          y = 80,
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
          id = 12,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 48,
          y = 48,
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
          id = 13,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 96,
          y = 80,
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
          id = 14,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 64,
          y = 48,
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
          id = 15,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 64,
          y = 32,
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
          id = 16,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 32,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = false
          }
        },
        {
          id = 17,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 48,
          y = 80,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = false
          }
        },
        {
          id = 21,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 32,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = false
          }
        },
        {
          id = 23,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 16,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = false
          }
        },
        {
          id = 26,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 0,
          y = 48,
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
