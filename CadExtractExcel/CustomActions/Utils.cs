using Microsoft.Win32;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;

namespace CustomActions
{
    internal static class Utils
    {
        public static void SaveFile(string filePath, string content)
        {
            using (StreamWriter sw = new StreamWriter(filePath)) {
                sw.WriteLine(content);
            }
        }

        public static string ReadFile(string filePath)
        {
            string result = string.Empty;
            using (StreamReader sr = new StreamReader(filePath)) {
                result = sr.ReadLine();
            }
            return result;
        }

        public static string GetCurrentFolder(string filePath)
        {
            return Path.GetDirectoryName(filePath);
        }

        public static void CopyFile(string filePath, string newPath)
        {
            File.Copy(filePath, newPath, true);
        }

        public static string GetLocalIPv4()
        {
            string output = string.Empty;
            foreach (NetworkInterface item in NetworkInterface.GetAllNetworkInterfaces()) {
                if ((item.NetworkInterfaceType == NetworkInterfaceType.Ethernet || item.NetworkInterfaceType == NetworkInterfaceType.Wireless80211)
                    && item.OperationalStatus == OperationalStatus.Up) {
                    IPInterfaceProperties adapterProperties = item.GetIPProperties();
                    if (adapterProperties.GatewayAddresses.FirstOrDefault() != null) {
                        foreach (UnicastIPAddressInformation ip in adapterProperties.UnicastAddresses) {
                            if (ip.Address.AddressFamily == AddressFamily.InterNetwork) {
                                output = ip.Address.ToString();
                            }
                        }
                    }
                }
            }

            return output;
        }

        public static string GetHostName()
        {
            return Dns.GetHostName();
        }

        public static string GetMacAddress()
        {
            var macAddress = NetworkInterface
                                        .GetAllNetworkInterfaces()
                                        .Where(nic => nic.OperationalStatus == OperationalStatus.Up && nic.NetworkInterfaceType != NetworkInterfaceType.Loopback)
                                        .Select(nic => nic.GetPhysicalAddress().ToString())
                                        .FirstOrDefault();

            return macAddress;
        }

        public static string ReadRegistryValue(string revitVersion, string keyName)
        {
            RegistryKey key = Registry.CurrentUser.OpenSubKey("Software", true);

            key.CreateSubKey("InnoRevitTools");
            key = key.OpenSubKey("InnoRevitTools", true);

            key.CreateSubKey(revitVersion);
            key = key.OpenSubKey(revitVersion, true);

            return (string)key.GetValue(keyName);
        }
    }
}