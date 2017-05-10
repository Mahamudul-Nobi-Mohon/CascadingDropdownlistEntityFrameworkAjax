namespace CascadingDropdownlistEntityFrameworkAjax.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class City
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CityId { get; set; }

        public int StateId { get; set; }

        [Required]
        [StringLength(100)]
        public string CityName { get; set; }

        public virtual State State { get; set; }
    }
}
