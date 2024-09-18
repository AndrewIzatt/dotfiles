#function mcd
#    mkdir -p $argv[1]
#    cd $argv[1]
#end
function mcd
    if not test -d $argv[1]
        mkdir -pv $argv[1]
    end
    cd $argv[1]
end

