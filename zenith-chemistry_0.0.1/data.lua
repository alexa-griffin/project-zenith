if not zen then zen = {} end
if not zen.chemistry then zen.chemistry = {} end

log( serpent.block( zen, { comment = false, numformat = '%1.8g' } ) )

require("prototypes.fluid")
