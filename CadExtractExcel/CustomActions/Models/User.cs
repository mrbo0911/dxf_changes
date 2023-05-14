using System.Collections.Generic;

namespace CustomActions
{
    public class User
    {
        public string Id { get; set; }

        public string UserName { get; set; }

        public string Email { get; set; }

        public string HostName { get; set; }

        public string IpAddress { get; set; }

        public string MacAddress { get; set; }

        public string PublicKey { get; set; }

        public ICollection<ProductCode> ProductCodes { get; set; }
    }
}