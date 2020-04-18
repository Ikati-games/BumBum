return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 13,
  height = 16,
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
      tilecount = 19,
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
          id = 4,
          image = "../../sprites/bum/bum.gif",
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
      width = 13,
      height = 16,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        10, 12, 11, 11, 13, 18, 15, 6, 13, 7, 20, 13, 11,
        20, 15, 19, 6, 14, 21, 14, 16, 7, 15, 14, 19, 7,
        18, 15, 20, 20, 16, 9, 18, 15, 17, 9, 13, 19, 11,
        20, 20, 10, 14, 8, 6, 8, 16, 18, 10, 17, 15, 14,
        16, 21, 21, 12, 6, 16, 13, 14, 17, 20, 9, 19, 11,
        21, 16, 10, 11, 8, 19, 11, 20, 20, 14, 15, 21, 14,
        9, 10, 21, 6, 13, 11, 9, 15, 20, 13, 9, 8, 9,
        15, 9, 12, 10, 13, 20, 8, 12, 9, 13, 10, 7, 19,
        8, 19, 17, 13, 7, 15, 21, 13, 18, 10, 19, 9, 19,
        20, 7, 19, 21, 19, 17, 18, 9, 21, 6, 16, 6, 9,
        17, 14, 15, 8, 16, 12, 19, 16, 19, 18, 15, 7, 9,
        21, 11, 13, 14, 21, 16, 8, 17, 13, 14, 13, 7, 8,
        18, 14, 12, 8, 12, 14, 8, 6, 18, 8, 12, 6, 21,
        13, 7, 12, 8, 17, 13, 8, 10, 13, 17, 19, 7, 15,
        8, 13, 17, 13, 17, 14, 9, 19, 18, 18, 15, 16, 7,
        12, 21, 16, 15, 13, 20, 8, 10, 11, 20, 9, 16, 20
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "walls",
      x = 0,
      y = 0,
      width = 13,
      height = 16,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 2, 2, 2, 0, 2, 2, 2, 2, 0, 2, 0, 2,
        2, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2,
        2, 0, 2, 2, 2, 0, 2, 2, 2, 0, 2, 2, 2,
        2, 0, 0, 0, 0, 0, 2, 2, 2, 0, 2, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 2, 2, 0, 2, 0, 2, 2, 0, 2, 0, 2,
        2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2,
        2, 0, 2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 2, 0, 2,
        2, 0, 0, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2,
        2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
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
          x = 80,
          y = 176,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 224,
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
