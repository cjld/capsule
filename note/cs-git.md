# git log show spec lines
git log  -L 1,20:multilevel.cpp
# git-dir and worktree
git --git-dir=xxx --work-tre=xxx
# git rm index
git rm -r --cached
--cached for removing index only
# explanation of HEAD^ and HEAD~

    G   H   I   J
     \ /     \ /
      D   E   F
       \  |  / \
        \ | /   |
         \|/    |
          B     C
           \   /
            \ /
             A

A =      = A^0
B = A^   = A^1     = A~1
C = A^2  = A^2
D = A^^  = A^1^1   = A~2
E = B^2  = A^^2
F = B^3  = A^^3
G = A^^^ = A^1^1^1 = A~3
H = D^2  = B^^2    = A^^^2  = A~2^2
I = F^   = B^3^    = A^^3^
J = F^2  = B^3^2   = A^^3^2

# git list file
git ls-tree --full-tree -r HEAD 

# How to see the changes in a commit?
git diff commit^ commit
git show commit
