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

namespace TestAliDayu
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        public static String url = "http://gw.api.taobao.com/router/rest";
        public static String appkey = "23391362";
        public static String secret = "b87755528769d0edce464c10ac190eb8";
        public static String codeNum;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String name = this.TextBox1.Text;//用户名
            String phoneNum = this.TextBox2.Text;//电话号
            //生成验证码
            System.Random Random = new System.Random();
            int Result = Random.Next(1000, 9999);
            codeNum = Result.ToString();

            //下面是发送短信验证码的代码，在这之前需要引入TopSdk.dll
            ITopClient client = new DefaultTopClient(url, appkey, secret);
            AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
            req.Extend = "";
            req.SmsType = "normal";
            req.SmsFreeSignName = "Csharp作业";
            req.SmsParam = "{name:'" + name + "',codeNum:'" + codeNum + "'}";
            req.RecNum = phoneNum;
            req.SmsTemplateCode = "SMS_11030283";
            AlibabaAliqinFcSmsNumSendResponse rsp = client.Execute(req);
            //Console.WriteLine(rsp.Body);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (codeNum == this.TextBox3.Text)
            {
                Response.Write("<script>alert('验证码输入正确')</script>");
            }
            else 
            {
                Response.Write("<script>alert('验证码输入不正确！')</script>");
            }
        }
    }
}