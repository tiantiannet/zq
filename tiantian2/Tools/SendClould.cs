
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CodeScales.Http;
using CodeScales.Http.Entity;
using CodeScales.Http.Entity.Mime;
using CodeScales.Http.Methods;
namespace Tools
{
    /// <summary>
    /// 邮件发送类
    /// 使用SendCloud服务
    /// </summary>
    public class SendClould
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="To">收件人</param>
        /// <param name="topic">主题</param>
        /// <param name="content">邮件</param>
        /// <returns>result</returns>
        public static HttpResponse send(string To, string topic, string content)
        {
            const String API_USER = "calfcamel_7_test_Zf6xl5";
            const String API_KEY = "ckcrG1iCvX7s7bY4";
            HttpClient client = new HttpClient();
            HttpPost postMethod = new HttpPost(new Uri("http://sendcloud.sohu.com/webapi/mail.send.json"));

            MultipartEntity multipartEntity = new MultipartEntity();
            postMethod.Entity = multipartEntity;

            multipartEntity.AddBody(new StringBody(Encoding.UTF8, "api_user", API_USER)); // 使用api_user和api_key进行验证
            multipartEntity.AddBody(new StringBody(Encoding.UTF8, "api_key", API_KEY));
            multipartEntity.AddBody(new StringBody(Encoding.UTF8, "from", "service@sendcloud.im")); // 发信人，用正确邮件地址替代
            multipartEntity.AddBody(new StringBody(Encoding.UTF8, "fromname", "SendCloud测试邮件"));
            multipartEntity.AddBody(new StringBody(Encoding.UTF8, "to", To)); // 收件人地址，用正确邮件地址替代，多个地址用';'分隔
            multipartEntity.AddBody(new StringBody(Encoding.UTF8, "subject", topic));
            multipartEntity.AddBody(new StringBody(Encoding.UTF8, "html", content));

            HttpResponse response = client.Execute(postMethod);

            //Console.WriteLine("Response Code: " + response.ResponseCode);
            //Console.WriteLine("Response Content: " + EntityUtils.ToString(response.Entity));

            //return "success";
            return response;
        }
    }
}
