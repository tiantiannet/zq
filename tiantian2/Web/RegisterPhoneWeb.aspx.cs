using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//阿里大鱼SDK相关引用
using Top.Api;
using Top.Api.Request;
using Top.Api.Response;
using BLL;
namespace Web
{
    public partial class RegisterPhoneWeb : System.Web.UI.Page
    {
        private static String url = "http://gw.api.taobao.com/router/rest";
        private static String appkey = "23391362";
        private static String secret = "b87755528769d0edce464c10ac190eb8";
        BLL.Register register;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.register = new BLL.Register();
            flag = 0;
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            String str_yzcode = Session["CheckCode"].ToString();
            if (str_yzcode.Equals(yzcode.Text))
            {
                sendphone(phonenum.Text);
            }
        }
        private int flag;
        private bool sendphone(String phoneNum)
        {
            if (flag == 1) return false;
            else flag = 1;
            //生成验证码
            System.Random Random = new System.Random();
            int Result = Random.Next(1000, 9999);
            String codeNum = Result.ToString();

            //下面是发送短信验证码的代码，在这之前需要引入TopSdk.dll
            ITopClient client = new DefaultTopClient(url, appkey, secret);
            AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
            req.Extend = "";
            req.SmsType = "normal";
            req.SmsFreeSignName = "Csharp作业";
            req.SmsParam = "{name:'" + "先生" + "',codeNum:'" + codeNum + "'}";
            req.RecNum = phoneNum;
            req.SmsTemplateCode = "SMS_11030283";
            AlibabaAliqinFcSmsNumSendResponse rsp = client.Execute(req);
            //Console.WriteLine(rsp.Body);

            Session["PHONE_CHECK_NUM"] = codeNum;

            return true;

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            if(phonecode.Text.Equals(Session["PHONE_CHECK_NUM"].ToString()))
            {
                String msg;
                msg = register.register(phonenum.Text, password.Text, "0");
            }
        }
    }
}