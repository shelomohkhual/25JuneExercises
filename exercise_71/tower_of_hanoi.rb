
def iterative_tower_of_hanoi
until end_pole is sequently stacked
end

# # c = finishing tower
# 1 move to b
# 2 move to c,follow 1 top 2 in c

# 1. at first, 1 disk move to c, 
# 2. 2 move to pole that doesn't have disk lower than it's own, so should move to b 
# 3. 3 move to pole c

# check highest disk=chd on pole b, and move the chd-1 disk to pole that isn't != chd+1, so should move to a
# then chd move to chd+1

# if c is sequencly stacked, move that sequene to b pole
#     move to be pole method (
#         1 move to b, 2 move to a and 1 follow top to 2
#         3
#     )

# 3 move to b
# arranged_sequence=[]
# auto_stacking_sequence_method(
# 1. check arranged_sequence which is highest=n, lowerest(1) move to other pole that != (n+1)
# second disk move to else pole which isn't the first disk and the first disk top the second disk first
# 2. at last n shuld top the disk == (n+1),
# 3.  repeat the first action to 2. top all sequencly to it)

#  if c pole empty?
#     a b pole find the biggest disk tat on top and move to c
#     repeat auto_stacking_sequence_method to top on pole c

# # DRIVER_CODE
# # def solve
    
# # end


# move a top disk to c
# (stacked disk) top to a disks 

def recursive_tower_of_hanoi(start,extra,end)

    #code here
end
    
a = [7,6,5,4,3,2,1]
b = []
c = []

recursive_tower_of_hanoi(a,b,c)





















# TAHA

def iterative_tower_of_hanoi
    #code here
    end
    
    
    A = [8,7,6,5,4,3,2,1]
    B = []
    C = []
    $count = 0
    def recursive_tower_of_hanoi(n, source, target, auxiliary)
        if n == 1
            target << source.pop
        else
            recursive_tower_of_hanoi((n-1), source, auxiliary, target )
            target << source.pop
            recursive_tower_of_hanoi((n-1), auxiliary, target, source)
        end
        # return target
    end
    
    #code here
    recursive_tower_of_hanoi(7, A, C, B)
    p A
    p B
    p C
    p $count