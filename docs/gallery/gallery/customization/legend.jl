# ---
# title: Legend tweaking
# cover: assets/legend_tweaking.png
# description: Setting legend attributes
# ---

using AlgebraOfGraphics, CairoMakie
set_aog_theme!() #src

# To tweak the position and appearance of the legend, simply use the `legend` keyword when plotting. For example

df = (x=rand(100), y=rand(100), group=rand(["a looooooong label", "an even loooooonger label", "and one more long label"], 100))
layers = linear() + mapping(color=:group)
plt = data(df) * layers * mapping(:x, :y)
draw(plt)

#

fg = draw(plt, legend=(position=:top, titleposition=:left, framevisible=true, padding=5))

# save cover image #src
mkpath("assets") #src
save("assets/legend_tweaking.png", fg) #src
