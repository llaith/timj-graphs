using DataFrames

min_intersection = int(ARGS[1])

user_ids = Set{UTF8String}()
# In the end we will only write out user_ids as vertices if they have at least one neighbour
used_user_ids = Set{UTF8String}()
let tracks_u = Dict{UTF8String, Vector{UTF8String}}()
    let data = readtable("../jams.csv", header=false), len = length(data[:,2])
        for i in 1:len
            if isna(data[i,3]) || isna(data[i,4])
                continue
            end
            user_id::UTF8String = data[i,2]
            push!(user_ids, user_id)
            a::UTF8String = data[i,3]
            track::UTF8String = string(data[i,3], data[i,4])
            if !haskey(tracks_u, track)
                tracks_u[track] = UTF8String[]
            end
            push!(tracks_u[track], user_id)
        end
    end
    @printf("Number of vertices: %d\n", length(user_ids))

    for track in tracks_u
        if length(track[2]) > 1
            for user in track[2]
                push!(used_user_ids, user)
            end
        end
    end
end

graph_file = open(string("cojam-tracks-",min_intersection,".graphml"), "a")

# Clear output line
print("\r                                                          \r")
print("Writing vertices…")
for user in user_ids
    @printf(graph_file, "\t<node id=\"%s\" />\n", user)
end
println("done.")
close(graph_file)
