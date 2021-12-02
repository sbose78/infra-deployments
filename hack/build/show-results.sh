
echo
echo "Build: $1 "

echo "Image: " \
   $(oc get pr $1 -o jsonpath="{.metadata.annotations.build\.appstudio\.io/image}") 
   
echo "Repo:  " \
    $(oc get pr $1 -o jsonpath="{.metadata.annotations.build\.appstudio\.io/repo}") 