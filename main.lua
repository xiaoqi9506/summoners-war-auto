local ts = require("ts")
local cjson = ts.json
w,h = getScreenSize();
MyTable = {
	["style"]  = "default",
	["rettype"] = "table",
	["width"] = w,
	["height"] = h,
	["orient"] = "1",
	["bgcolor"] = "255,255,255",
	["btnbkcolor"] = "255,255,255",
	["config"] = "",
	["pagetype"] = "multi",
	["selpage"] = "1",
	["pagenumtype"] = "dot",
	["titles"] = "第1页",
	["timer"] = "10",
	["cancelname"] = "取消",
	["okname"] = "确定",
	pages=
	{
		{

			{
				["type"] = "RadioGroup",
				["select"] = "0",
				["id"] = "radio0",
				["list"] = "地下城,带狗粮,试炼塔,突袭,单选组合",
				},},
	},

} 
local MyJsonString = cjson.encode(MyTable);
UIret,values = showUI(MyJsonString)


function touch(x, y)
	touchDown(x,y);    --按下
	mSleep(50);            --延迟 3 秒
	touchUp(x,y);      --抬起
end

--iOS 设备以当前应用 Home 键在右边初始化，即以 Home 键在右侧时的横屏左上角为屏幕坐标原点(0,0)；安卓设备以屏幕默认截图方向向左旋转 90° 进行初始化
init(1);

--死循环一直运行
while (true) do
	-- 开始战斗
	x, y = findMultiColorInRegionFuzzy(0x4da9eb, "0|6|0xffffff,6|6|0x4da9eb,6|18|0x4da9eb,6|21|0xffffff,17|21|0x4da9eb,15|10|0xe0f0fb,15|-1|0xcde6f9,15|-12|0xdeeffb,15|-18|0x4da9eb", 90, 0, 0, 719, 1279);
	if x ~= -1 and y ~= -1 then
		click(x, y);
	end

	-- 战斗成功
	x, y = findMultiColorInRegionFuzzy(0x4da9eb, "0|6|0xffffff,6|6|0x4da9eb,6|18|0x4da9eb,6|21|0xffffff,17|21|0x4da9eb,15|10|0xe0f0fb,15|-1|0xcde6f9,15|-12|0xdeeffb,15|-18|0x4da9eb", 90, 0, 0, 719, 1279);
	if x ~= -1 and y ~= -1 then
		click(x, y);
	end


end