//全局变量定义
var m_iNowChanNo = -1;                           //当前通道号
var m_iLoginUserId = -1;                         //注册设备用户ID
var m_iChannelNum = -1;							 //模拟通道总数
var m_bDVRControl = new Array(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);				 //OCX控件对象
var m_iProtocolType = 0;                         //协议类型，0 ?C TCP， 1 - UDP
var m_iStreamType = 0;                           //码流类型，0 表示主码流， 1 表示子码流
var m_iPlay = new Array(-1, -1, -1, -1);                 //当前是否正在预览
var m_iRecord = 0;                               //当前是否正在录像
var m_iTalk = 0;                                 //当前是否正在对讲 
var m_iVoice = 0;                                //当前是否打开声音
var m_iAutoPTZ = 0;                              //当前云台是否正在自转
var m_iPTZSpeed = 4;                             //云台速度
var currentWindowNO = 0;

var szDevIp;
var szDevPort;
var szDevUser;
var szDevPwd;

var current_device;
var isLoginSuccess;

var iCurObs = 0;
var iCurLogon = 1;
var iChannelNum = 0;
var iStreamNO = 0;
var iDelayNum = 1;
var iMode = 1;
var iChannelNum;//通道号
var m_channelArr = new Array(new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1), new Array('', -1));
//播放视频方法
function PlayAV() {
    //获取当前播放索引
    iCurObs = TiandyVideo.CurObs;
    //无法播放视频提示？
    var a = TiandyVideo.Commander(Obs_StartRealTime_Cmd, iCurObs, iCurLogon, iChannelNum, iStreamNO, 20 * iDelayNum, iDelayNum, iMode, 0, 0).split('\n');
    if (a < 0) {
        alert("连接视频失败！！！");
    }
    //alert("登陆后连接视频"+a+"通道号"+iChannelNum);
}
//登陆后调用此方法
function DHT_Install(iLogStatus, iLogonID) {
    if (iLogStatus == 3) {
        alert("连接硬盘录像机失败！！！");
    }
    iCurLogon = iLogonID;
    //	if(TiandyVideo.Commander(Dev_Model_Get,iCurLogon,0,0,0,0,0,0,0,0)!="0"){
    //		
    //		iDevModel      =     TiandyVideo.Commander(Dev_Model_Get,iCurLogon,0,0,0,0,0,0,0,0).split('\n')[1].split(splitCode)[1];
    //	}

    var iCurObsList = new Object;
    var j = 0;
    TiandyVideo.Commander(Obs_ShowMsg_Cmd, iCurObs, true, JS_cShow209, 3000, 0, 0, 0, 0, 0);
    //var arrResult    =   TiandyVideo.Commander(Entry_Prop_Get,iCurLogon ,0,0,0,0,0,0,0,0).split('\n')[1].split(splitCode);
    //sChannelNumMax   =   arrResult[5];
    TiandyVideo.Commander(Obs_ShowMsg_Cmd, iCurObs, true, JS_cShow209, 3000, 0, 0, 0, 0, 0);
    PlayAV();
}
function showvideoforgis(cunitcode, chkdevicecode, channelcode, videoip, videoport) {


    szDevIp = videoip;
    szDevPort = parseInt(videoport);
    szDevUser = "admin";
    szDevPwd = "1111";


    iChannelNum = parseInt(channelcode);
    var login = TiandyVideo.Commander(Entry_Logon_Cmd, 0, szDevIp, szDevUser, szDevPwd, "", szDevPort, 0, 0, 0);

    //播放视频
    //iCurObs = TiandyVideo.CurObs;


}
function showvideo(cunitcode, chkdevicecode, channelcode) {
    videoRecorderBO.getRecorder(cunitcode, chkdevicecode, function (data) {

        if (null != data) {
            szDevIp = data.ipaddress;
            szDevPort = data.port;
            szDevUser = "admin";
            szDevPwd = "1111";
        }

        //链接服务器
        //var a = TiandyVideo.commander(Entry_Logon_Cmd,sProxyIP,sServerHost, txUserName.value,txPassword.value,"",parseInt(txPort.value),0,0,0);
        //var login = TiandyVideo.Commander(Entry_Logon_Cmd,"","10.110.254.66","admin","1111","",3000,0,0,0);
        iChannelNum = parseInt(channelcode);
        var login = TiandyVideo.Commander(Entry_Logon_Cmd, 0, szDevIp, szDevUser, szDevPwd, "", szDevPort, 0, 0, 0);

        //播放视频
        //		iCurObs = TiandyVideo.CurObs;
        //		iChannelNum = channelcode;
        //		var show = TiandyVideo.Commander(Obs_StartRealTime_Cmd,iCurObs,iCurLogon,iChannelNum,iStreamNO,20*iDelayNum,iDelayNum,iMode,0,0).split('\n');
        //		alert(show);
    });

}

/*************************************************
Function:		ArrangeWindow
Description:	画面分割为几个窗口
Input:			x : 窗口数目			
Output:			无
return:			无				
*************************************************/
function ArrangeWindow(x) {
    var iMaxWidth = document.getElementById("OCXBody").offsetWidth;
    var iMaxHeight = document.getElementById("OCXBody").offsetHeight;
    for (var i = 1; i <= 16; i++) {
        if (i <= x) {
            document.getElementById("NetPlayOCX" + i).style.display = "";
        }
        else {
            document.getElementById("NetPlayOCX" + i).style.display = "none";
        }
    }
    var d = Math.sqrt(x);
    var iWidth = iMaxWidth / d - 5;
    var iHight = iMaxHeight / d - 5;
    for (var j = 1; j <= x; j++) {
        document.getElementById("NetPlayOCX" + j).style.width = iWidth;
        document.getElementById("NetPlayOCX" + j).style.height = iHight;
    }
}
/*************************************************
Function:		ChangeStatus
Description:	选中窗口时，相应通道的状态显示
Input:			iWindowNum : 	选中窗口号		
Output:			无
return:			无				
*************************************************/
function ChangeStatus(iWindowNum) {
    currentWindowNO = iWindowNum - 1;
    for (var i = 1; i <= 16; i++) {
        if (i == iWindowNum) {
            document.getElementById("NetPlayOCX" + i).style.border = "1px solid #ff0000";
        }
        else {
            document.getElementById("NetPlayOCX" + i).style.border = "1px solid #EBEBEB";
        }
    }
}


function fullScreen() {
    isRefresh = false;
    m_bDVRControl[currentWindowNO].FullScreenCtrl();
}

function InitOCX(initx) {  	/*var j = 0;
	for(var i = 0; i < initx; i ++){
	j = i + 1;
	m_bDVRControl[i] = document.getElementById("HIKOBJECT" + j);
	document.getElementById("NetPlayOCX" + j).style.border = "1px solid #EBEBEB";	}*/
}

function ButtonPress(sKey) {
    try {
        switch (sKey) {
            case "LoginDev":
                {
                    m_iLoginUserId = m_bDVRControl[0].Login(szDevIp, szDevPort, szDevUser, szDevPwd);
                    if (m_iLoginUserId == -1) {
                        isLoginSuccess = false;
                        alert("注册失败！");
                    }
                    else {
                        for (var i = 2; i <= 16; i++) {
                            document.getElementById("HIKOBJECT" + i).SetUserID(m_iLoginUserId);
                        }
                        isLoginSuccess = true;
                    }
                    break;
                }
            case "LogoutDev":
                {
                    for (var i = 0; i < 16; i++) {
                        m_bDVRControl[i].Logout();
                    }
                    break;
                }
            case "Preview:start":
                {
                    //判断是否已经重复预览
                    for (var i = 0; i < 16; i++) {

                        if (m_channelArr[i][0] == current_device && m_channelArr[i][1] == m_iNowChanNo) {
                            m_bDVRControl[i].StopRealPlay();
                            m_bDVRControl[i].ClearOCX();
                            //m_bDVRControl[i].Logout();
                        }
                    }

                    m_channelArr[currentWindowNO] = new Array(current_device, m_iNowChanNo);

                    if (m_iNowChanNo > -1) {
                        if (m_iPlay[currentWindowNO] == 1) {
                            m_bDVRControl[currentWindowNO].StopRealPlay();
                        }

                        var bRet = m_bDVRControl[currentWindowNO].StartRealPlay(m_iNowChanNo - 1, m_iProtocolType, m_iStreamType);
                        if (bRet) {
                            m_iPlay[currentWindowNO] = 1;
                        }
                        else {
                            //alert("预览通道"+(m_iNowChanNo + 1) +"失败！");
                            alert("预览通道" + (m_iNowChanNo) + "失败！");
                        }
                    }
                    else {
                        alert("请选择通道号！");
                    }
                    break;
                }
            case "Preview:stop":
                {
                    for (var i = 0; i < m_iChannelNum; i++) {
                        if (m_bDVRControl[i].StopRealPlay()) {
                            alert("停止预览成功！");
                            m_iPlay[i] = 0;
                        }
                        else {
                            alert("停止预览失败！");
                        }
                    }
                    break;
                }
            case "CatPic:jpeg":
                {
                    if (m_iPlay == 1) {
                        if (m_bDVRControl.JPEGCapturePicture((m_iNowChanNo + 1), 1, 0, "C:/OCXJPEGCaptureFiles", 1)) {
                            alert("抓JPEG图成功！");
                        }
                        else {
                            alert("抓JPEG图失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "Record:start":
                {
                    if (m_iPlay == 1) {
                        if (m_iRecord == 0) {
                            if (m_bDVRControl.StartRecord("C:/OCXRecordFiles")) {
                                alert("开始录像成功！");
                                m_iRecord = 1;
                            }
                            else {
                                alert("开始录像失败！");
                            }
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "Record:stop":
                {
                    if (m_iRecord == 1) {
                        if (m_bDVRControl.StopRecord(1)) {
                            alert("停止录像成功！");
                            m_iRecord = 0;
                        }
                        else {
                            alert("停止录像失败！");
                        }
                    }
                    break;
                }
            case "PTZ:stop":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed)) {
                            alert("停止PTZ成功！");
                            m_iAutoPTZ = 0;
                        }
                        else {
                            alert("停止PTZ失败！");
                        }
                    }
                    break;
                }
            case "PTZ:leftup":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(13, m_iPTZSpeed)) {
                            //alert("PTZ左上成功！");
                        }
                        else {
                            alert("PTZ左上失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:rightup":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(14, m_iPTZSpeed)) {
                            //alert("PTZ右上成功！");
                        }
                        else {
                            alert("PTZ右上失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:up":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(0, m_iPTZSpeed)) {
                            //alert("PTZ上成功！");
                        }
                        else {
                            alert("PTZ上失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:left":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(2, m_iPTZSpeed)) {
                            //alert("PTZ向左成功！");
                        }
                        else {
                            alert("PTZ向左失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:right":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(3, m_iPTZSpeed)) {
                            //alert("PTZ向右成功！");
                        }
                        else {
                            alert("PTZ向右失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:rightdown":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(16, m_iPTZSpeed)) {
                            //alert("PTZ右下成功！");
                        }
                        else {
                            alert("PTZ右下失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:leftdown":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(15, m_iPTZSpeed)) {
                            //alert("PTZ左下成功！");
                        }
                        else {
                            alert("PTZ左下失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:down":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(1, m_iPTZSpeed)) {
                            //alert("PTZ向下成功！");
                        }
                        else {
                            alert("PTZ向下失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:auto":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(10, m_iPTZSpeed)) {
                            //alert("PTZ自转成功！");
                            m_iAutoPTZ = 1;
                        }
                        else {
                            alert("PTZ自转失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "zoom:in":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(4, m_iPTZSpeed)) {
                            //alert("焦距拉近成功！");
                        }
                        else {
                            alert("焦距拉近失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "zoom:out":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(5, m_iPTZSpeed)) {
                            //alert("焦距拉远成功！");
                        }
                        else {
                            alert("焦距拉远失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "focus:in":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(6, m_iPTZSpeed)) {
                            //alert("聚焦拉近成功！");
                        }
                        else {
                            alert("聚焦拉近失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "focus:out":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(7, m_iPTZSpeed)) {
                            //alert("聚焦拉远成功！");
                        }
                        else {
                            alert("聚焦拉远失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "iris:in":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(8, m_iPTZSpeed)) {
                            //alert("光圈大成功！");
                        }
                        else {
                            alert("光圈大失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "iris:out":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        if (m_iAutoPTZ == 1) {
                            m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                            m_iAutoPTZ = 0;
                        }
                        if (m_bDVRControl[currentWindowNO].PTZCtrlStart(9, m_iPTZSpeed)) {
                            //alert("光圈小成功！");
                        }
                        else {
                            alert("光圈小失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "PTZ:leftupstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(13, m_iPTZSpeed);
                    break;
                }
            case "PTZ:rightupstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(14, m_iPTZSpeed);
                    break;
                }
            case "PTZ:upstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(0, m_iPTZSpeed);
                }
            case "PTZ:leftstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(2, m_iPTZSpeed);
                    break;
                }
            case "PTZ:rightstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(3, m_iPTZSpeed);
                    break;
                }
            case "PTZ:rightdownstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(16, m_iPTZSpeed);
                    break;
                }
            case "PTZ:leftdownstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(15, m_iPTZSpeed);
                    break;
                }
            case "PTZ:downstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(1, m_iPTZSpeed);
                    break;
                }
            case "PTZ:autostop":
                {

                    m_bDVRControl[currentWindowNO].PTZCtrlStop(10, m_iPTZSpeed);
                    break;
                }
            case "zoom:instop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(4, m_iPTZSpeed);
                    break;
                }
            case "zoom:outstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(5, m_iPTZSpeed);
                    break;
                }
            case "focus:instop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(6, m_iPTZSpeed);
                    break;
                }
            case "focus:outstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(7, m_iPTZSpeed);
                    break;
                }
            case "iris:instop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(8, m_iPTZSpeed);
                    break;
                }
            case "iris:outstop":
                {
                    m_bDVRControl[currentWindowNO].PTZCtrlStop(9, m_iPTZSpeed);
                    break;
                }
            case "getImagePar":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        var szXmlInfo = m_bDVRControl[currentWindowNO].GetVideoEffect();
                        if (szXmlInfo != "") {
                            var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
                            xmlDoc.async = "false"
                            xmlDoc.loadXML(szXmlInfo)
                            document.getElementById("PicLight").value = xmlDoc.documentElement.childNodes[0].childNodes[0].nodeValue;
                            document.getElementById("PicContrast").value = xmlDoc.documentElement.childNodes[1].childNodes[0].nodeValue;
                            document.getElementById("PicSaturation").value = xmlDoc.documentElement.childNodes[2].childNodes[0].nodeValue;
                            document.getElementById("PicTonal").value = xmlDoc.documentElement.childNodes[3].childNodes[0].nodeValue;
                            alert("获取图像参数成功！");
                        }
                        else {
                            alert("获取图像参数失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "setImagePar":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        var iL = parseInt(document.getElementById("PicLight").value);
                        var iC = parseInt(document.getElementById("PicContrast").value);
                        var iS = parseInt(document.getElementById("PicSaturation").value);
                        var iT = parseInt(document.getElementById("PicTonal").value);
                        var bRet = m_bDVRControl[currentWindowNO].SetVideoEffect(iL, iC, iS, iT);
                        if (bRet) {
                            alert("设置图像参数成功！");
                        }
                        else {
                            alert("设置图像参数失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "setPreset":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        var iPreset = parseInt(document.getElementById("Preset").value);
                        var bRet = m_bDVRControl[currentWindowNO].PTZCtrlSetPreset(iPreset);
                        if (bRet) {
                            alert("设置预置点成功！");
                        }
                        else {
                            alert("设置预置点失败！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            case "goPreset":
                {
                    if (m_iPlay[currentWindowNO] == 1) {
                        var iPreset = parseInt(document.getElementById("Preset").value);
                        var bRet = m_bDVRControl[currentWindowNO].PTZCtrlGotoPreset(iPreset);
                        if (bRet) {
                            alert("调用预置点成功！");
                        }
                        else {
                            alert("调用预置点成功！");
                        }
                    }
                    else {
                        alert("请先预览！");
                    }
                    break;
                }
            default:
                {
                    //Record:start   setPreset
                    break;
                }
        }		//switch  
    }
    catch (err) {
        alert(err);
    }
}

/*************************************************
  Function:    	onload
  Input:        无
  Output:      	无
  Return:		无
*************************************************/
//window.onload = function()
//{ 	
//	InitOCX(16);
//	ArrangeWindow(4);
//} 


/*************************************************
  Function:    	rightclick
  Description:	网页禁用右键
  Input:        无
  Output:      	无
  Return:		bool:   true false
*************************************************/
function rightclick() {
    return false;
}

//document.oncontextmenu=new Function("event.returnValue=false;"); 


//function clearOCX()
//{
//	for (var i = 0; i < 16; i ++) {
//		m_bDVRControl[i].StopRealPlay();
//		m_bDVRControl[i].ClearOCX();
//		m_bDVRControl[i].Logout();
//	}
//}

function stopPreview() {
    //	m_bDVRControl[currentWindowNO].StopRealPlay();
    //	m_bDVRControl[currentWindowNO].ClearOCX();
    iCurObs = TiandyVideo.CurObs;
    var stop = TiandyVideo.Commander(Obs_Stop_Cmd, iCurObs);

}