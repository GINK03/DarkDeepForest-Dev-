rm *.so rf
clang++ -std=c++14 RandGen.cpp -shared  -o librandgen.so -fPIC
clang++ -std=c++14 TreeNode.cpp -shared  -o libtreenode.so -fPIC
clang++ -std=c++14 DecisionTree.cpp -shared  -o libdecisiontree.so -fPIC
clang++ -std=c++14 RandomForest.cpp -shared  -o librandomforest.so -fPIC
clang++ reset.cpp -std=c++14 -I./ -I/usr/include/boost -L./ -lrandgen -ltreenode -ldecisiontree -lrandomforest -o rf -v 
cat ./iris.txt | ./rf
