//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Inżynierka
{
    using System;
    using System.Collections.Generic;
    
    public partial class MiasWylo
    {
        public MiasWylo()
        {
            this.MiasPrzy = new HashSet<MiasPrzy>();
        }
    
        public int IDMiasWyl { get; set; }
        public string MiasWyl { get; set; }
    
        public virtual ICollection<MiasPrzy> MiasPrzy { get; set; }
    }
}
