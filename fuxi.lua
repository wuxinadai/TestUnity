-- t={}
-- print(getmetatable(t))
-- local mt={x=3,y=5}
-- setmetatable(t,mt)
-- print(getmetatable(t).x)


-- local t1 = {}
-- local t2 = {}

-- local mt={
-- 	_add=function (t1,t2)
-- 		print("Add called")
-- 	end
-- }
-- setmetatable(t1,mt)
-- setmetatable(t2,mt)
-- local result=t1+t2;
-- 如果两个具有不同元素的值进行算数操作
-- a.如果第一个值有元表,就以这个元表为准。 
-- b.否则,如果第二个值有元表,就用第二个值的元表。 
-- c.如果两个值都没有元表,或者没有对应的元方法,那么,就会报错。


-- local t={
-- 	name="ssss"
-- }
-- local t2={ __index=t3}
-- local t3={money=90000}
-- local mt={
-- -- 	__index=function (table,key)
-- -- 		print(key.."search")
-- -- 	end
-- -- __index=t1
--  __index=t2
--  	-- body
-- }
-- setmetatable(mt,t2)
-- setmetatable(t,mt)
-- print(t.money)


-- local smartMan={
-- 	name="aaa",age=25,sayHello=function()
-- 	print("sayHello")
-- end
-- }
-- local t1 = {}
-- local mt ={
-- 	__index=smartMan,
-- 	__newindex=function (t,k,v)
-- 	print("dont fuzhi")
-- 	end
-- }
-- setmetatable(t1,mt)
-- t1.sayHello=function ()print("newHello") end
-- t1.sayHello();
-- t2.sayHello()

-- local smartMan={
-- 	name="none",
-- }
-- local t1={
-- 	hehe=123;
-- };
-- local mt={
-- 	__index=smartMan,
-- 	__newindex=
-- 	function (t,k,v)
-- 		print("别赋值!");
-- 	end
-- }
-- setmetatable(t1,mt);
-- print(rawget(t1,"name"));
-- print(rawget(t1,"hehe"));
-- rawset(t1,"name","小偷");
-- print(t1.name);


-- a =100
-- for k,v in pairs(_G) do
-- 	print(k,v)
-- end


-- local game=require("gameDate")

-- game.play()

-- print(Gamerequire("GameManager")


-- GameManager.setLevel(12)
-- Manager.getLevel())
-- print(GameManager.Level())



-- TSprite={
-- 	x=0,
-- 	y=0,
-- }
-- function TSprite.setPosition(self,x,y)
-- 	self.x=x;
-- 	self.y=y;
-- end
-- local who =TSprite;
-- TSprite=nil;
-- who.setPosition(who,1,2)
-- TSprite={
-- 	x=0,
-- 	y=0,
-- }
-- function TSprite:setPosition(x,y)
-- 	self.x=x;
-- 	self.y=y;
-- end
-- local who=TSprite;
-- TSprite =nil;
-- who:setPosition(1,2);


-- Hero={attack=100}

-- function Hero:new(o)
-- 	o=o or {}
-- 	setmetatable(o,self)
-- 	self.__index=self
-- 	return o
-- end
-- function Hero:skill(addAttack)
-- 	self.attack=self.attack+addAttack;
-- end

-- oneHero=Hero:new()
-- oneHero:skill(50)
-- print(oneHero.attack)
-- print(Hero.attack)


-- local Table={
-- 	array={};
-- 	number=0;
-- }
-- function Table:new(num,x,y)
-- 	local a={}
-- 	setmetatable(a,{__index=Table})
-- 	a.number=num;
-- 	a.array[1]=x;
-- 	a.array[2]=y;
-- 	return a;
-- end
-- function Table:trace()
-- 	print(self.number.." "..self.array[1]).." "..self.array[2])
-- end
-- local a = Table:new(250,50,5)
-- local b = Table:new(300,30,3)
-- a:trace()
-- b:trace()


--9.13复习
-- local mt={}
-- mt.__add =function (t1,t2)
-- 	print("两个数相加")
-- end
-- local t1 = {}
-- local t2 = {}
-- setmetatable(t1,mt)
-- setmetatable(t2,mt)
-- local result = t1+t2
-- return result

