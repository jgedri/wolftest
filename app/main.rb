# Let player choose a coat color.
def select_coat(args)
    rect_color = {r: 0, g: 0, b: 0, a: 255}
    rect_bounds = {x: 100, y: 150, w: 100, h: 100}
    prim_marker = {primitive_marker: :solid}
    gray_wolf = {x: 100, y: 150, w: 16, h: 16, path: "sprites/wolf/wolf_black_tf.png"}

    args.state.coat ||= 0
    args.state.coat_list ||= ["gray", "brown", "black"]

    if args.inputs.mouse.click
        if args.inputs.mouse.inside_rect? rect_bounds
            args.state.coat += 1

        end
    end
    
    args.outputs.primitives << rect_bounds.merge(rect_color).merge(prim_marker)
end   

# Main function.
def tick args
   # $gtk.download_stb_rb "xenobrain", "rubycolors", "color.rb" if args.state.tick_count == 0


   args.state.player << { x: 500, y: 500, w: 50, h: 50, }

   @buttons ||= []
   select_coat(args)
end