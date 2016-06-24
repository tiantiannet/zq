
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Http;

namespace SendCloudExampleV1
{
    // 模板发送
    class csharp_template_v1
    {
        public static void send(String substitution_vars)
        {
            String url = "http://sendcloud.sohu.com/webapi/mail.send_template.json";

            String api_user = "Yayoi_test_resht0";
            String api_key = "A6QE6xnRlblGZfOR";

            HttpClient client = null;
            HttpResponseMessage response = null;

            try
            {
                client = new HttpClient();

                List<KeyValuePair<String, String>> paramList = new List<KeyValuePair<String, String>>();

                paramList.Add(new KeyValuePair<string, string>("api_user", api_user));
                paramList.Add(new KeyValuePair<string, string>("api_key", api_key));
                paramList.Add(new KeyValuePair<string, string>("from", "sendcloud@sendcloud.org"));
                paramList.Add(new KeyValuePair<string, string>("fromname", "TianTianGroup"));
                paramList.Add(new KeyValuePair<string, string>("subject", ".NET作业注册账号激活"));
                paramList.Add(new KeyValuePair<string, string>("template_invoke_name", "test_template_active"));
                paramList.Add(new KeyValuePair<string, string>("substitution_vars", substitution_vars));

                response = client.PostAsync(url, new FormUrlEncodedContent(paramList)).Result;
                String result = response.Content.ReadAsStringAsync().Result;
                Console.WriteLine("result:{0}", result);
            }
            catch (Exception e)
            {
                Console.WriteLine("\nException Caught!");
                Console.WriteLine("Message :{0} ", e.Message);
            }
            finally
            {
                if (null != client)
                {
                    client.Dispose();
                }
            }
        }

        static void Main(string[] args)
        {
            String substitution_vars = "{\"to\": [\"lo9808ve@qq.com\"], \"sub\" : { \"%name%\" : [\"张倩\"], \"%url%\" : [\"http://taobao.com\"]}}";
            send(substitution_vars);
            Console.ReadKey();
        }
    }
}