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
    
    public partial class MiasPrzy
    {
        public int IDMiasPrz { get; set; }
        public Nullable<int> IDMiasWyl { get; set; }
        public string MiasPrz { get; set; }
    
        public virtual MiasWylo MiasWylo { get; set; }
    }
}
