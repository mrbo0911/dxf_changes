using System;

namespace CustomActions
{
    public class ProductCode
    {
        public enum Status
        {
            Licensed,
            Blocked
        }

        public string Id { get; set; }

        public Status ProductCodeStatus { get; set; }

        public DateTime CreatedDate { get; set; }

        public DateTime ExpiredDate { get; set; }
    }
}