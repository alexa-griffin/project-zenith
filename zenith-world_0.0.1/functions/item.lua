if not zen.lib.item then zen.lib.item = {} end


function zen.lib.item.duplicateFromRaw(name, overrides)
  return zen.lib.duplicateFromRaw("item", name, overrides)
end
