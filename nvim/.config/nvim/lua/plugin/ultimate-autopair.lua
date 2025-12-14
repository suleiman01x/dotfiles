local ua = require('ultimate-autopair')
local configs={ua.extend_default({
  bs={
    overjumps=true
  },
})}

ua.init(configs)
