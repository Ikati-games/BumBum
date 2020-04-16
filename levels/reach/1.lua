return {
  version = "1.2",
  -- luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 4,
  height = 4,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 4,
  properties = {},
  tilesets = {
    {
      name = "TileCollection",
      firstgid = 1,
      filename = "TiledFiles/TileCollection.tsx",
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
          image = "sprites/background/bg_tile_1_1.png",
          width = 16,
          height = 16
        },
        {
          id = 1,
          image = "sprites/wall/wall.png",
          width = 16,
          height = 16
        },
        {
          id = 2,
          image = "sprites/trashcan/trashcan.png",
          width = 16,
          height = 16
        },
        {
          id = 4,
          image = "sprites/bum/bum.gif",
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
      name = "tiles",
      x = 0,
      y = 0,
      width = 4,
      height = 4,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2,
        2, 1, 1, 2,
        2, 2, 1, 2,
        2, 2, 2, 2
      }
    },
    {
      type = "objectgroup",
      id = 2,
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 1.77636e-15,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 2,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "finish",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 48,
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
