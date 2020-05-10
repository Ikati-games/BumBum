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
  nextobjectid = 11,
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
      height = 14,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        21, 9, 20, 17, 17, 21, 13, 15, 23, 16, 11,
        13, 14, 13, 13, 11, 9, 8, 14, 22, 23, 21,
        23, 9, 16, 8, 10, 10, 19, 14, 11, 19, 18,
        12, 16, 23, 16, 17, 10, 14, 16, 11, 21, 16,
        17, 19, 19, 15, 19, 19, 23, 15, 19, 21, 15,
        10, 9, 10, 8, 15, 8, 13, 8, 9, 23, 22,
        18, 9, 15, 16, 16, 21, 22, 16, 13, 22, 12,
        8, 14, 18, 17, 23, 23, 21, 18, 16, 8, 18,
        12, 19, 14, 16, 23, 13, 21, 20, 18, 19, 11,
        11, 18, 21, 20, 8, 14, 23, 20, 21, 19, 21,
        12, 22, 21, 9, 21, 12, 18, 19, 19, 14, 20,
        22, 8, 14, 14, 21, 16, 16, 16, 8, 17, 9,
        12, 20, 17, 21, 12, 17, 9, 19, 8, 19, 17,
        8, 12, 16, 19, 13, 23, 21, 18, 23, 23, 18
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0,
        0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0,
        0, 0, 0, 0, 4, 0, 0, 4, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          x = 112,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "janitor",
          shape = "rectangle",
          x = 80,
          y = 160,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 34,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 128,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = false
          }
        },
        {
          id = 4,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 128,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 25,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = true,
            ["isVerticalAllowed"] = false
          }
        },
        {
          id = 5,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 144,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {
            ["isHorizontalAllowed"] = false,
            ["isVerticalAllowed"] = true
          }
        },
        {
          id = 6,
          name = "",
          type = "trap",
          shape = "rectangle",
          x = 112,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 26,
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
          x = 112,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 26,
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
