



     --   local str="1:2:3:4:5"
     --   local len=string.len(str)
     --   local table={}
     --   local n=0
     --   for i=1,len do
     --   	   if i%2==1 then
       	   	 
     --   	   	  n=n+1
     --   	   	  table[n]=string.sub(str,i,i)
     --   	   	  print(string.sub(str,i,i))
     --   	   end

     --   end
  
     -- for n=1,#table do
     -- 	  print(table[n])
     -- end



    local table={{rate=1,star=4},{rate=1,star=3},{rate=3,star=1},{rate=3,star=4}}
    for i=1,#table-1  do
    	for m=1,#table-1  do
        if table[i].rate==table[i+1].rate then
        	if table[i].star>table[i+1].star then
        		local n=table[i]
        		table[i]=table[i+1]
        		table[i+1]=table[i]
        	end
        	elseif table[i].rate<table[i+1].rate then
        	local n=table[i]
        		table[i]=table[i+1]
        		table[i+1]=table[i]
        end
   end

    end

 for i in pairs(table) do
 	print(table[i].rate .. table[i].star)
 end


 