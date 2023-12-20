function show_255_colors
    for i in (seq 0 255)
        printf "\e[38;5;$i"m"$i "
    end
    echo ""
end


