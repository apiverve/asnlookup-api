using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ASNLookup
{
    /// <summary>
    /// Query options for the ASN Lookup API
    /// </summary>
    public class ASNLookupQueryOptions
    {
        /// <summary>
        /// The ASN you want to get information about
        /// Example: AS15169
        /// </summary>
        [JsonProperty("asn")]
        public string Asn { get; set; }
    }
}
