-- --	以只读方式打开文件
-- -- file = io.open("iotest.txt", "r")
-- --	设置默认输入文件为 iotest.txt
-- -- io.input(file)
-- --	输出文件第一行
-- -- print(io.read())
-- --	关闭打开的文件
-- -- io.close(file)

-- --	以附加的方式打开只写文件
-- -- file = io.open("iostest.txt", "a")
-- 	-- 设置默认输出文件未 iotest.txt
-- -- io.output(file)
-- --	在文件最后一行添加 Lua 注释
-- -- io.write("\n-- iotest.txt 文件末尾注释")
-- -- io.close(file)

-- -- file = io.open("iostest.txt", "r")
-- -- io.input(file)
-- -- for line in io.lines() do -- io.lines()不会关闭文件
-- -- 	print(line)
-- -- end
-- -- io.close()

function io.exists(path)
	file = io.open(path, "r")
	io.close()
	if io.open(path, "r") then
		return true
	end
	return false
end
-- print(io.exists("iotest.txt"))


function io.readfile(path)
	file = io.open(path, "r")
	io.close()
	return file:read("*a")
	-- print("end")
end

-- print(io.readfile("iostest.txt"))

function io.writefile(path, content, mode)
	mode = mode or "w+b"
	file = io.open(path, mode)
	io.close()
	if file then
		file:write(content)
	end
end

-- io.writefile("iostest.txt", "abc123")

-- function copy(t)
-- 	local dest = {}
-- 	for k,v in pairs(t) do
-- 		-- print(type(v))
-- 		if type(v)=="table" then
-- 			print(type(v).." is table")
-- 			-- -- dest[k] = copy(v)
-- 			-- return function ()
-- 			-- 	local _t = {}
-- 			-- 	for _k,_v in pairs(v) do
-- 			-- 		_t[_k] = _v
-- 			-- 	end
-- 			-- 	return _t
-- 			-- end
-- 		else
-- 			dest[k] = v
-- 		end
-- 		print(k..":"..v)
-- 	end
-- 	return dest
-- end

-- function t_print(t1)
-- 	for k,v in pairs(t1) do
-- 		print(k..":"..v)
-- 	end
-- end

-- function deepcopy(tDest,tSrc)
-- 	for key,value in tSrc do 
-- 		if type(value) == "table" and value["spuer"]==nil then
-- 			tDest[key] = {}
-- 			deepcopy(tDest[])

-- t1 = {
-- 	"a","b","c",{"1","2","3"}
-- }
-- t2 = copy(t1)


-- local name = "zs"
-- local result = assert(name == "zs1", "你不是zs")
-- print(result)	--true


