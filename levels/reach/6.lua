return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 9,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 28,
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
      name = "TileCollection",
      firstgid = 35,
      filename = "../../../../TileCollection.tsx",
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
      tilecount = 4,
      tiles = {
        {
          id = 0,
          image = "../../sprites/background/bg_tile_1_1.png",
          width = 16,
          height = 16
        },
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
          id = 4,
          image = "../../sprites/bum/bum.gif",
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
      width = 9,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        12, 13, 17, 9, 10, 11, 13, 8, 21,
        10, 7, 13, 10, 9, 15, 15, 12, 14,
        10, 20, 10, 16, 13, 16, 19, 21, 20,
        19, 17, 19, 16, 14, 12, 7, 14, 11,
        14, 21, 18, 11, 21, 18, 13, 9, 7,
        19, 12, 12, 16, 17, 20, 6, 21, 10,
        19, 13, 17, 7, 10, 21, 17, 16, 17,
        7, 8, 6, 11, 10, 16, 11, 17, 13,
        7, 11, 9, 12, 8, 8, 19, 18, 8,
        17, 19, 21, 12, 17, 15, 9, 16, 8
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "walls",
      x = 0,
      y = 0,
      width = 9,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 2, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 2, 0, 0, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2
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
          name = "trap1",
          type = "trap",
          shape = "rectangle",
          x = 16,
          y = 144,
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
          name = "trap2",
          type = "trap",
          shape = "rectangle",
          x = 80,
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
          id = 3,
          name = "trap3",
          type = "trap",
          shape = "rectangle",
          x = 96,
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
          id = 4,
          name = "trap4",
          type = "trap",
          shape = "rectangle",
          x = 112,
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
          id = 5,
          name = "trap5",
          type = "trap",
          shape = "rectangle",
          x = 80,
          y = 80,
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
          name = "trap6",
          type = "trap",
          shape = "rectangle",
          x = 64,
          y = 80,
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
          name = "trap7",
          type = "trap",
          shape = "rectangle",
          x = 16,
          y = 80,
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
          name = "trap9",
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
          id = 10,
          name = "trap10",
          type = "trap",
          shape = "rectangle",
          x = 32,
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
          id = 11,
          name = "trap11",
          type = "trap",
          shape = "rectangle",
          x = 96,
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
          id = 12,
          name = "trap12",
          type = "trap",
          shape = "rectangle",
          x = 64,
          y = 64,
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
          name = "trap13",
          type = "trap",
          shape = "rectangle",
          x = 112,
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
          id = 14,
          name = "trap14",
          type = "trap",
          shape = "rectangle",
          x = 80,
          y = 64,
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
          name = "trap15",
          type = "trap",
          shape = "rectangle",
          x = 80,
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
          id = 16,
          name = "trap16",
          type = "trap",
          shape = "rectangle",
          x = 48,
          y = 112,
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
          name = "trap17",
          type = "trap",
          shape = "rectangle",
          x = 64,
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
          id = 21,
          name = "trap18",
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
          id = 23,
          name = "trap17",
          type = "trap",
          shape = "rectangle",
          x = 32,
          y = 32,
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
          id = 25,
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "trap20",
          type = "trap",
          shape = "rectangle",
          x = 16,
          y = 64,
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
          id = 27,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
