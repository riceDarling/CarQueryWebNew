using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarQueryWebNewDBHelper.Entity
{
    public class TUNIT
    {
        public string CUNITCODE { get; set; } //检测站编号，新增时取MAX值+1
        public string CUNITTYPE { get; set; }
        public string CUNITNAME { get; set; } //检测站名称
        public string CUNITABBREVIATION { get; set; } //检测站简称
        public string UNITADDRESS { get; set; } //检测站地址
        public string NPOSTCODE { get; set; } //邮政编码
        public string CITYCODE { get; set; } //所在城市  select * from TBASEDATA where CDATATYPE=292
        public string COUNTY { get; set; } //所在区县 select NBASEDATAID,CDATANAME from TBASEDATA where filter='120000'
        public DateTime DREGDATE { get; set; } //注册时间
        public string CDIRECTOR { get; set; } //负责人
        public string CLINKMAN { get; set; } //联系人
        public string CPHONE { get; set; } //联系电话
        public string CMA { get; set; } //计量认证证号
        public string PROVAPPROVE { get; set; } //省委托编号
        public int NEQUIPMENTNUM { get; set; } //检测线数量
        public string CIPADDRESS { get; set; } //服务器IP
        public int NPORTNUMBER { get; set; } //服务器端口
        //public string BCANCEL { get; set; } //是否注销
        public string EXT_COL1 { get; set; } //路由器IP
        public string EXT_COL2 { get; set; } //路由器端口
        public string EXT_COL3 { get; set; } //是否允许复检
        public string ISLOCK { get; set; } //是否锁止
        public string CNOCHECK { get; set; } //禁止检测某种用途车辆 select NBASEDATAID,CDATANAME from TBASEDATA where CDATATYpe=39，以逗号分割 取NBASEDATAID
        public string CMEMO { get; set; } //备注
        public DateTime LINKDATE { get; set; } //联网日期
        public string STATUS { get; set; } // 状态


        //-资质信息
        public string ORGCODE{ get; set; } //组织机构代码
        public string CLICENSENUM{ get; set; } //经营许可证号
        public string CPERMIT{ get; set; } //资质许可证号
        public string CECONOMICTYPE{ get; set; } //经济类型
        public decimal NFIXEDASSETS{ get; set; } //固定资产
        public decimal NREGISTEREDCAPITAL{ get; set; } //注册资金
        public double LONGITUDE{ get; set; } //检测站经度
        public double LATITUDE { get; set; } //检测站纬度
        public float NTESTSITEAREA{ get; set; } //场地面积
        public int STAFFTOTAL{ get; set; } //职工总数
        public int SENIORENGINEERNUM{ get; set; } //高级工程师人数
        public int ASSISTANTENGINEERNUM{ get; set; } //助理工程师人数
        public string TECHNICALDIRECTOR{ get; set; } //技术负责人
        public int ASSESSQUALIFIEDNUM{ get; set; } //考核合格人数
        public int ENGINEERNUM{ get; set; } //工程师人数
        public int TECHNICIANNUM{ get; set; } //技术员人数
        public string QUALITYDIRECTOR{ get; set; } //质量负责人
        public string LEGAL{ get; set; } //法人
        public Int32 TESTSAFE{ get; set; } //是否承担安检
        public Int32 TESTCOMB{ get; set; } //是否承担综检
        public string AGENCYTYPE{ get; set; } //申请机构类别
        public int EXT_COL4{ get; set; } //检测服务区域
        public DateTime DEXPIRATION{ get; set; } //资质有效期
        public string CRANGE { get; set; } //检测业务范围
    }
}
