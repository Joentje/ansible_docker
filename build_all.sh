repository='jeroenslot'
image='ansible'

find -path './[^.]*' -prune -type d | while IFS= read -r d; do 
    directory=$(echo $d)
    version=$(echo $d | sed 's|./||')
    echo Building $repository/$image:$version
    docker build -t $repository/$image:$version --file $directory/Dockerfile .
    docker push $repository/$image:$version
done