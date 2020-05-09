return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 15,
  height = 19,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 3,
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
      height = 19,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        17, 8, 15, 19, 12, 12, 17, 15, 11, 17, 6, 15, 20, 13, 11,
        17, 6, 18, 8, 19, 20, 17, 10, 15, 13, 21, 18, 17, 13, 7,
        21, 10, 7, 10, 8, 7, 16, 10, 13, 18, 6, 9, 11, 15, 16,
        9, 8, 12, 13, 19, 11, 12, 20, 15, 13, 9, 7, 8, 17, 9,
        17, 11, 8, 16, 17, 10, 12, 13, 20, 10, 21, 21, 7, 18, 6,
        13, 8, 14, 20, 12, 17, 9, 16, 20, 13, 12, 21, 6, 16, 15,
        10, 17, 10, 13, 19, 16, 11, 15, 13, 6, 15, 21, 19, 7, 18,
        12, 6, 15, 6, 11, 11, 19, 8, 18, 18, 6, 10, 9, 17, 15,
        11, 21, 17, 13, 7, 10, 11, 12, 11, 17, 8, 11, 10, 18, 10,
        13, 11, 19, 6, 11, 9, 10, 16, 18, 8, 20, 19, 9, 11, 18,
        15, 17, 11, 7, 21, 17, 21, 14, 11, 13, 16, 16, 21, 19, 21,
        7, 11, 16, 10, 20, 13, 18, 12, 8, 13, 12, 6, 6, 20, 6,
        20, 13, 18, 19, 21, 6, 13, 19, 12, 15, 11, 13, 13, 13, 14,
        6, 18, 15, 11, 20, 14, 11, 8, 19, 14, 8, 11, 7, 14, 19,
        7, 19, 16, 17, 10, 12, 15, 6, 10, 11, 8, 16, 14, 21, 18,
        12, 14, 16, 20, 16, 10, 19, 11, 11, 12, 17, 17, 18, 14, 6,
        10, 14, 21, 19, 8, 13, 21, 18, 7, 11, 8, 19, 19, 8, 21,
        11, 6, 15, 12, 18, 19, 21, 11, 13, 18, 6, 8, 8, 9, 19,
        11, 9, 8, 14, 20, 17, 6, 6, 6, 16, 16, 10, 7, 12, 6
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "walls",
      x = 0,
      y = 0,
      width = 15,
      height = 19,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 2,
        2, 0, 2, 2, 0, 2, 0, 2, 0, 2, 0, 2, 2, 0, 2,
        2, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 2,
        2, 2, 2, 2, 2, 2, 2, 0, 2, 2, 2, 2, 2, 2, 2,
        2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 2,
        2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 2, 0, 2,
        2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 2, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 2,
        2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2,
        2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 2,
        2, 2, 2, 0, 2, 2, 2, 2, 2, 0, 2, 2, 2, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2,
        2, 0, 2, 0, 2, 2, 2, 0, 2, 2, 2, 0, 2, 0, 2,
        2, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 2, 2,
        2, 0, 2, 0, 0, 0, 2, 0, 2, 0, 0, 0, 2, 0, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
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
          name = "player",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 288,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 32,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 32,
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
