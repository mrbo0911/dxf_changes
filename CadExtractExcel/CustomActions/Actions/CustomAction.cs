using Microsoft.Deployment.WindowsInstaller;
using System.Net.NetworkInformation;

namespace CustomActions
{
    public static class CustomActions
    {
        [CustomAction]
        public static ActionResult ValidateClientSide(Session session)
        {
            session.Log("Begin ValidateClientSide");

            bool pingable_1 = PingHost(Define.PUBLIC_IP_1);
            bool pingable_2 = false;
            bool pingable_3 = false;
            bool pingable_4 = false;
            bool pingable_5 = false;

            if (!pingable_1) {
                pingable_2 = PingHost(Define.PUBLIC_IP_2);

                if (!pingable_2) {
                    pingable_3 = PingHost(Define.PUBLIC_IP_3);
                    if (!pingable_3) {
                        pingable_4 = PingHost(Define.PUBLIC_IP_4);
                        if (!pingable_4) {
                            pingable_5 = PingHost(Define.PUBLIC_IP_5);
                        }
                    }
                }
            }

            if (pingable_1 || pingable_2 || pingable_3 || pingable_4 || pingable_5) {
                session[Define.Error_Msg_Flag] = "0";
            }
            else {
                session[Define.Error_Msg_Flag] = "1";
                session[Define.Error_Msg] = "This AutoCAD tool works only in INNO office!!!";
            }

            session.Log("End ValidateClientSide");
            return ActionResult.Success;
        }

        [CustomAction]
        public static ActionResult ValidateProductCode(Session session)
        {
            string[] key = { "9994-1572-9172-7989", "2781-3163-8280-7767", "2917-4164-8393-2910", "8620-5531-4506-8945", "6044-9094-8759-4082" };

            session["PIDACCEPTED"] = "0";
            session[Define.Error_Msg] = "Unable to install the autocad tools, please contact administrator!";

            string productCode = session[Define.Product_Code];
            //MessageBox.Show("productCode = " + productCode);

            foreach (string k in key) {
                if (productCode.Contains(k)) {
                    session["PIDACCEPTED"] = "1";
                    session["PUBLIC_IP"] = Define.PUBLIC_IP_1;
                }
            }

            return ActionResult.Success;
        }

        public static bool PingHost(string nameOrAddress)
        {
            bool pingable = false;
            Ping pinger = null;

            try {
                pinger = new Ping();
                PingReply reply = pinger.Send(nameOrAddress);
                pingable = reply.Status == IPStatus.Success;
            }
            catch (PingException) {
                // Discard PingExceptions and return false;
            }
            finally {
                if (pinger != null) {
                    pinger.Dispose();
                }
            }

            return pingable;
        }
    }
}