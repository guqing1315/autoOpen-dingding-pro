--数据库名称
name = "autoopen-dingding"
username = "root"
password = "xxxx"
IP = "xxxxxxx"
port = 3306

--插入数据库
function insertMysql()
    t = batteryStatus()
    statusStr = ""
    if t.charging == 1 then
        statusStr = "正在充电"
    else
        statusStr = "未充电"
    end
    local ts = require("ts")
    --获取设备详细型号，安卓不同的手机可能返回空值
    producttype = ts.system.devicetype()
    sysver = getOSVer(); 
    local luasql = require "luasql.mysql"
    -- 创建环境对象
    mysql = luasql.mysql()
    -- 连接数据库
    conn, msg = mysql:connect(name, username, password, IP, port)
    if conn then
        -- 数据库操作语句
        now_text = os.date("%Y-%m-%d %X", getNetTime())
        now_text = [[']] .. now_text .. [[']]
        statusStr = [[']] .. statusStr .. [[']]
        levelStr = [[']] .. t.level .. [[']]
        producttype = [[']] .. producttype .. [[']]
        sysver = [[']] .. sysver .. [[']]
        
        --先删除，在插入
        conn:execute("delete from device_info")
        sqls =
            "insert into device_info(charging,update_time,battery_status,phone_type,sysver) values(" ..
            statusStr .. "," .. now_text .. "," .. levelStr .. "," .. producttype .. "," .. sysver .. ")"
        conn:execute [[set names utf8]]
        conn:execute(sqls)
        --关闭数据库
        conn:close()
        --断开 mysql 库
        mysql:close()
    else
        toast("连接失败：" .. msg)
    end
end

function isLock()
flag = deviceIsLock();      
if flag == 0 then
    lockDevice(); 
    lua_exit();
    mSleep(1000)
end
    end

insertMysql()
mSleep(1000)
isLock()
