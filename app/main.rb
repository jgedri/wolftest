# Let player choose a coat color.
def select_coat(args)
    args.state.coat ||= 0
    args.state.coat_list ||= ["gray", "brown", "black"]

    if args.inputs.mouse.click
        if args.inputs.mouse.x.between?(300, 300+48) && args.inputs.mouse.y.between?(500, 500+48)
end   

# Main function.
def tick args
   # $gtk.download_stb_rb "xenobrain", "rubycolors", "color.rb" if args.state.tick_count == 0

   args.state.player << { x: 500, y: 500, w: 50, h: 50, }

   @buttons ||= []
end